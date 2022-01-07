; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_main.c_read_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_main.c_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@read_name.name = internal global i8* null, align 8
@read_name.size = internal global i64 256, align 8
@user_abort = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: Error reading filenames: %s\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: Unexpected end of input when reading filenames\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"%s: Null character found when reading filenames; maybe you meant to use `--files0' instead of `--files'?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_name(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load i8*, i8** @read_name.name, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @read_name.size, align 8
  %10 = call i8* @xmalloc(i64 %9)
  store i8* %10, i8** @read_name.name, align 8
  br label %11

11:                                               ; preds = %8, %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %95, %64, %30, %11
  %13 = load i32, i32* @user_abort, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %96

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fgetc(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ferror(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINTR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %12

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 (i32, i32, ...) @message_error(i32 %32, i32 %35, i32 %37)
  store i8* null, i8** %2, align 8
  br label %97

39:                                               ; preds = %16
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @feof(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, ...) @message_error(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  store i8* null, i8** %2, align 8
  br label %97

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %12

65:                                               ; preds = %61
  %66 = load i8*, i8** @read_name.name, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** @read_name.name, align 8
  store i8* %69, i8** %2, align 8
  br label %97

70:                                               ; preds = %55
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i32, ...) @message_error(i32 %74, i32 %77)
  store i8* null, i8** %2, align 8
  br label %97

79:                                               ; preds = %70
  %80 = load i32, i32* %5, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** @read_name.name, align 8
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %4, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %81, i8* %85, align 1
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @read_name.size, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load i64, i64* @read_name.size, align 8
  %91 = mul i64 %90, 2
  store i64 %91, i64* @read_name.size, align 8
  %92 = load i8*, i8** @read_name.name, align 8
  %93 = load i64, i64* @read_name.size, align 8
  %94 = call i8* @xrealloc(i8* %92, i64 %93)
  store i8* %94, i8** @read_name.name, align 8
  br label %95

95:                                               ; preds = %89, %79
  br label %12

96:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %97

97:                                               ; preds = %96, %73, %65, %54, %31
  %98 = load i8*, i8** %2, align 8
  ret i8* %98
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @fgetc(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @message_error(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
