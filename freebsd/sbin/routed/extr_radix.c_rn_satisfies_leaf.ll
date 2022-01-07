; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_satisfies_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_satisfies_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i8*, i8* }

@rn_ones = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.radix_node*, i32)* @rn_satisfies_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_satisfies_leaf(i8* %0, %struct.radix_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.radix_node* %1, %struct.radix_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %15 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %18 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i8*, i8** @rn_ones, align 8
  store i8* %30, i8** %10, align 8
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @min(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %73, %37
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = xor i32 %61, %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %81

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  br label %54

80:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %71
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
