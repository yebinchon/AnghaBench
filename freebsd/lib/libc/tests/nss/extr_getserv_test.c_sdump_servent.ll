; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_sdump_servent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_sdump_servent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8*, i8*, i8**, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" noaliases\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" (null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.servent*, i8*, i64)* @sdump_servent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdump_servent(%struct.servent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.servent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.servent* %0, %struct.servent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.servent*, %struct.servent** %4, align 8
  %12 = getelementptr inbounds %struct.servent, %struct.servent* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.servent*, %struct.servent** %4, align 8
  %15 = getelementptr inbounds %struct.servent, %struct.servent* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ntohs(i32 %16)
  %18 = load %struct.servent*, %struct.servent** %4, align 8
  %19 = getelementptr inbounds %struct.servent, %struct.servent* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %17, i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %91

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.servent*, %struct.servent** %4, align 8
  %37 = getelementptr inbounds %struct.servent, %struct.servent* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %31
  %41 = load %struct.servent*, %struct.servent** %4, align 8
  %42 = getelementptr inbounds %struct.servent, %struct.servent* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load %struct.servent*, %struct.servent** %4, align 8
  %48 = getelementptr inbounds %struct.servent, %struct.servent* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %7, align 8
  br label %50

50:                                               ; preds = %78, %46
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %91

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %91

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %7, align 8
  br label %50

81:                                               ; preds = %50
  br label %86

82:                                               ; preds = %40
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %83, i64 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %81
  br label %91

87:                                               ; preds = %31
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %88, i64 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %30, %68, %76, %87, %86
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
