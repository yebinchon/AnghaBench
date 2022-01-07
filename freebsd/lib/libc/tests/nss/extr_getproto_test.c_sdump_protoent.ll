; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_sdump_protoent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_sdump_protoent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8*, i32, i8** }

@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" noaliases\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" (null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protoent*, i8*, i64)* @sdump_protoent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdump_protoent(%struct.protoent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.protoent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.protoent* %0, %struct.protoent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.protoent*, %struct.protoent** %4, align 8
  %12 = getelementptr inbounds %struct.protoent, %struct.protoent* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.protoent*, %struct.protoent** %4, align 8
  %15 = getelementptr inbounds %struct.protoent, %struct.protoent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %87

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.protoent*, %struct.protoent** %4, align 8
  %33 = getelementptr inbounds %struct.protoent, %struct.protoent* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %83

36:                                               ; preds = %27
  %37 = load %struct.protoent*, %struct.protoent** %4, align 8
  %38 = getelementptr inbounds %struct.protoent, %struct.protoent* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  %43 = load %struct.protoent*, %struct.protoent** %4, align 8
  %44 = getelementptr inbounds %struct.protoent, %struct.protoent* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  store i8** %45, i8*** %7, align 8
  br label %46

46:                                               ; preds = %74, %42
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %87

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %87

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %7, align 8
  br label %46

77:                                               ; preds = %46
  br label %82

78:                                               ; preds = %36
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %79, i64 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %77
  br label %87

83:                                               ; preds = %27
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %84, i64 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %26, %64, %72, %83, %82
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
