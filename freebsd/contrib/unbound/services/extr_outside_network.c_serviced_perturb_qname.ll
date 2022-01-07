; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_perturb_qname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_perturb_qname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_randstate = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"qname perturbed to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_randstate*, i64*, i64)* @serviced_perturb_qname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serviced_perturb_qname(%struct.ub_randstate* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ub_randstate*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ub_randstate* %0, %struct.ub_randstate** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 10
  store i64* %14, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %15, 15
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %8, align 8
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %67, %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = icmp ne i64 %28, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i8
  %35 = call i64 @isalpha(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.ub_randstate*, %struct.ub_randstate** %4, align 8
  %42 = call i64 @ub_random(%struct.ub_randstate* %41)
  store i64 %42, i64* %9, align 8
  store i32 30, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, 1
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i8
  %51 = call i64 @toupper(i8 zeroext %50)
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  br label %59

53:                                               ; preds = %43
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i8
  %57 = call i64 @tolower(i8 zeroext %56)
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i64, i64* %9, align 8
  %61 = ashr i64 %60, 1
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %31
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %8, align 8
  br label %27

67:                                               ; preds = %27
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %8, align 8
  %70 = load i64, i64* %68, align 8
  store i64 %70, i64* %7, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load i64, i64* @verbosity, align 8
  %73 = load i64, i64* @VERB_ALGO, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %77 = add nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %11, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %12, align 8
  %81 = load i64*, i64** %5, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 10
  %83 = call i32 @dname_str(i64* %82, i8* %80)
  %84 = load i64, i64* @VERB_ALGO, align 8
  %85 = call i32 @verbose(i64 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %80)
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %75, %71
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @ub_random(%struct.ub_randstate*) #1

declare dso_local i64 @toupper(i8 zeroext) #1

declare dso_local i64 @tolower(i8 zeroext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dname_str(i64*, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
