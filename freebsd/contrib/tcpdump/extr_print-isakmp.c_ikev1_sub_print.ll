; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_sub_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev1_sub_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isakmp_gen = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" [|%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.isakmp_gen*, i32*, i32, i32, i32, i32)* @ikev1_sub_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ikev1_sub_print(i32* %0, i32 %1, %struct.isakmp_gen* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.isakmp_gen*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.isakmp_gen, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.isakmp_gen* %2, %struct.isakmp_gen** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.isakmp_gen*, %struct.isakmp_gen** %12, align 8
  %22 = bitcast %struct.isakmp_gen* %21 to i32*
  store i32* %22, i32** %18, align 8
  br label %23

23:                                               ; preds = %73, %8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = load %struct.isakmp_gen*, %struct.isakmp_gen** %12, align 8
  %28 = bitcast %struct.isakmp_gen* %27 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @ND_TCHECK(i64 %29)
  %31 = load %struct.isakmp_gen*, %struct.isakmp_gen** %12, align 8
  %32 = call i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen* %20, %struct.isakmp_gen* %31, i32 8)
  %33 = load %struct.isakmp_gen*, %struct.isakmp_gen** %12, align 8
  %34 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %20, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = bitcast %struct.isakmp_gen* %33 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @ND_TCHECK2(i64 %38, i32 %36)
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %51, %26
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %19, align 4
  br label %44

54:                                               ; preds = %44
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.isakmp_gen*, %struct.isakmp_gen** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32* @ike_sub0_print(i32* %57, i32 %58, %struct.isakmp_gen* %59, i32* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32* %65, i32** %18, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %17, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  store i32* null, i32** %9, align 8
  br label %87

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %20, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = bitcast i32* %76 to %struct.isakmp_gen*
  store %struct.isakmp_gen* %77, %struct.isakmp_gen** %12, align 8
  br label %23

78:                                               ; preds = %23
  %79 = load i32*, i32** %18, align 8
  store i32* %79, i32** %9, align 8
  br label %87

80:                                               ; No predecessors!
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @NPSTR(i32 %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  %86 = call i32 @ND_PRINT(i32* %85)
  store i32* null, i32** %9, align 8
  br label %87

87:                                               ; preds = %80, %78, %72
  %88 = load i32*, i32** %9, align 8
  ret i32* %88
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen*, %struct.isakmp_gen*, i32) #1

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32* @ike_sub0_print(i32*, i32, %struct.isakmp_gen*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NPSTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
