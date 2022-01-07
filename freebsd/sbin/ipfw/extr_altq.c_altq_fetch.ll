; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_altq_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_altq_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_altq = type { i32, %struct.pf_altq, i32 }
%struct.pf_altq = type { i64 }

@altq_fetch.altq_fetched = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/dev/pf\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"altq support opening pf(4) control device\00", align 1
@PFIOC_ALTQ_VERSION = common dso_local global i32 0, align 4
@DIOCGETALTQS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"altq support getting queue list\00", align 1
@DIOCGETALTQ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@altq_entries = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @altq_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altq_fetch() #0 {
  %1 = alloca %struct.pfioc_altq, align 8
  %2 = alloca %struct.pf_altq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @altq_fetch.altq_fetched, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %72

8:                                                ; preds = %0
  store i32 1, i32* @altq_fetch.altq_fetched, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %72

15:                                               ; preds = %8
  %16 = call i32 @bzero(%struct.pfioc_altq* %1, i32 24)
  %17 = load i32, i32* @PFIOC_ALTQ_VERSION, align 4
  %18 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DIOCGETALTQS, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.pfioc_altq* %1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @close(i32 %25)
  br label %72

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %65, %27
  %32 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @DIOCGETALTQ, align 4
  %39 = call i64 @ioctl(i32 %37, i32 %38, %struct.pfioc_altq* %1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EBUSY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %69

46:                                               ; preds = %41
  %47 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @close(i32 %48)
  br label %72

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 1
  %52 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %65

56:                                               ; preds = %50
  %57 = call %struct.pf_altq* @safe_calloc(i32 1, i32 8)
  store %struct.pf_altq* %57, %struct.pf_altq** %2, align 8
  %58 = load %struct.pf_altq*, %struct.pf_altq** %2, align 8
  %59 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 1
  %60 = bitcast %struct.pf_altq* %58 to i8*
  %61 = bitcast %struct.pf_altq* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = load %struct.pf_altq*, %struct.pf_altq** %2, align 8
  %63 = load i32, i32* @entries, align 4
  %64 = call i32 @TAILQ_INSERT_TAIL(i32* @altq_entries, %struct.pf_altq* %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %55
  %66 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %1, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %31

69:                                               ; preds = %45, %31
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %46, %23, %13, %7
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @bzero(%struct.pfioc_altq*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_altq*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.pf_altq* @safe_calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pf_altq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
