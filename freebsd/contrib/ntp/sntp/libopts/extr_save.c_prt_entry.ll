; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_prt_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_prt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i32 }

@NO_EQUIVALENT = common dso_local global i64 0, align 8
@OPARG_TYPE_NUMERIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i8*)* @prt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_entry(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = call i32 @DISABLED_OPT(%struct.TYPE_4__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_EQUIVALENT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8* [ %22, %19 ], [ %26, %23 ]
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 17, %30
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fputs(i8* %32, i32* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @OPTST_GET_ARGTYPE(i32 %40)
  %42 = load i64, i64* @OPARG_TYPE_NUMERIC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %94

45:                                               ; preds = %37, %27
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %46)
  br label %48

48:                                               ; preds = %52, %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fputc(i8 signext 32, i32* %53)
  br label %48

55:                                               ; preds = %48
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @OPTST_GET_ARGTYPE(i32 %58)
  %60 = load i64, i64* @OPARG_TYPE_NUMERIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %93

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %76, %68
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* @NL, align 1
  %72 = call i8* @strchr(i8* %70, i8 signext %71)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %89

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @fwrite(i8* %77, i64 %82, i64 1, i32* %83)
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %6, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  br label %69

89:                                               ; preds = %75
  %90 = load i8*, i8** %6, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @fputs(i8* %90, i32* %91)
  br label %93

93:                                               ; preds = %89, %62
  br label %94

94:                                               ; preds = %93, %44
  %95 = load i8, i8* @NL, align 1
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @fputc(i8 signext %95, i32* %96)
  ret void
}

declare dso_local i32 @DISABLED_OPT(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fwrite(i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
