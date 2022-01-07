; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/example/extr_jsondump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/example/extr_jsondump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc(): errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fread(): %d, errno=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"fread(): unexpected EOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"realloc(): errno=%d\0A\00", align 1
@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 2, i64* %10, align 8
  %16 = call i32 @jsmn_init(%struct.TYPE_4__* %8)
  %17 = load i64, i64* %10, align 8
  %18 = mul i64 1, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 3, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

27:                                               ; preds = %0
  br label %28

28:                                               ; preds = %108, %27
  %29 = trunc i64 %13 to i32
  %30 = load i32, i32* @stdin, align 4
  %31 = call i32 @fread(i8* %15, i32 1, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

39:                                               ; preds = %28
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

49:                                               ; preds = %39
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = add i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i8* @realloc(i8* %50, i32 %56)
  store i8* %57, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 3, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

64:                                               ; preds = %49
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @strncpy(i8* %67, i8* %15, i32 %68)
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %100, %64
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @jsmn_parse(%struct.TYPE_4__* %8, i8* %75, i64 %76, i8* %77, i64 %78)
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = mul i64 %87, 2
  store i64 %88, i64* %10, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = mul i64 1, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @realloc(i8* %89, i32 %92)
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  store i32 3, i32* %1, align 4
  store i32 1, i32* %11, align 4
  br label %109

100:                                              ; preds = %86
  br label %74

101:                                              ; preds = %82
  br label %108

102:                                              ; preds = %74
  %103 = load i8*, i8** %4, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dump(i8* %103, i8* %104, i32 %106, i32 0)
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %101
  br label %28

109:                                              ; preds = %96, %60, %46, %45, %34, %23
  %110 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @jsmn_init(%struct.TYPE_4__*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @fread(i8*, i32, i32, i32) #2

declare dso_local i8* @realloc(i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @jsmn_parse(%struct.TYPE_4__*, i8*, i64, i8*, i64) #2

declare dso_local i32 @dump(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
