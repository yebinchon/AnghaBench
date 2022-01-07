; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_flags_to_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_flags_to_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@CCDF_UNIFORM = common dso_local global i32 0, align 4
@CCDF_MIRROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no memory to parse flags\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@flagvaltab = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @flags_to_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flags_to_val(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* @errno, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strtol(i8* %9, i8** %4, i32 0)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ERANGE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CCDF_UNIFORM, align 4
  %23 = load i32, i32* @CCDF_MIRROR, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %92

31:                                               ; preds = %15, %1
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %4, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  store i32 0, i32* %7, align 4
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %87, %37
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strtok(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flagvaltab, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flagvaltab, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @strcmp(i8* %53, i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %44

67:                                               ; preds = %62, %44
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flagvaltab, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @free(i8* %76)
  store i32 -1, i32* %2, align 4
  br label %92

78:                                               ; preds = %67
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flagvaltab, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %78
  store i8* null, i8** %5, align 8
  br label %39

88:                                               ; preds = %39
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %75, %29, %28
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
