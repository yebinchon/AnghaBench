; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_sig_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_sig_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32, i32, i32 }
%struct.ccsig = type { i64, i8*, i64, i64 }
%struct.uni_msg = type { i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdata*, i64, i8*)* @sig_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_flush(%struct.ccdata* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ccdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccsig*, align 8
  %8 = alloca %struct.ccsig*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %10 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %9, i32 0, i32 2
  %11 = call %struct.ccsig* @TAILQ_FIRST(i32* %10)
  store %struct.ccsig* %11, %struct.ccsig** %7, align 8
  br label %12

12:                                               ; preds = %52, %3
  %13 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %14 = icmp ne %struct.ccsig* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call %struct.ccsig* @TAILQ_NEXT(%struct.ccsig* %16, i32 %17)
  store %struct.ccsig* %18, %struct.ccsig** %8, align 8
  %19 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %20 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %15
  %25 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %26 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %32 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %37 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.uni_msg*
  %40 = call i32 @uni_msg_destroy(%struct.uni_msg* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %43 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %42, i32 0, i32 2
  %44 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %45 = load i32, i32* @link, align 4
  %46 = call i32 @TAILQ_REMOVE(i32* %43, %struct.ccsig* %44, i32 %45)
  %47 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %48 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %47, i32 0, i32 0
  %49 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %50 = load i32, i32* @link, align 4
  %51 = call i32 @TAILQ_INSERT_HEAD(i32* %48, %struct.ccsig* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %24, %15
  %53 = load %struct.ccsig*, %struct.ccsig** %8, align 8
  store %struct.ccsig* %53, %struct.ccsig** %7, align 8
  br label %12

54:                                               ; preds = %12
  %55 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %56 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %55, i32 0, i32 1
  %57 = call %struct.ccsig* @TAILQ_FIRST(i32* %56)
  store %struct.ccsig* %57, %struct.ccsig** %7, align 8
  br label %58

58:                                               ; preds = %98, %54
  %59 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %60 = icmp ne %struct.ccsig* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %58
  %62 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %63 = load i32, i32* @link, align 4
  %64 = call %struct.ccsig* @TAILQ_NEXT(%struct.ccsig* %62, i32 %63)
  store %struct.ccsig* %64, %struct.ccsig** %8, align 8
  %65 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %66 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %61
  %71 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %72 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %78 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %83 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.uni_msg*
  %86 = call i32 @uni_msg_destroy(%struct.uni_msg* %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %89 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %88, i32 0, i32 1
  %90 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %91 = load i32, i32* @link, align 4
  %92 = call i32 @TAILQ_REMOVE(i32* %89, %struct.ccsig* %90, i32 %91)
  %93 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %94 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %93, i32 0, i32 0
  %95 = load %struct.ccsig*, %struct.ccsig** %7, align 8
  %96 = load i32, i32* @link, align 4
  %97 = call i32 @TAILQ_INSERT_HEAD(i32* %94, %struct.ccsig* %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %70, %61
  %99 = load %struct.ccsig*, %struct.ccsig** %8, align 8
  store %struct.ccsig* %99, %struct.ccsig** %7, align 8
  br label %58

100:                                              ; preds = %58
  ret void
}

declare dso_local %struct.ccsig* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.ccsig* @TAILQ_NEXT(%struct.ccsig*, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccsig*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ccsig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
