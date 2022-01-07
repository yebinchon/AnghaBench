; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_mcs.c_ck_barrier_mcs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_mcs.c_ck_barrier_mcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_mcs = type { i32, i32, i32**, i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_mcs_init(%struct.ck_barrier_mcs* %0, i32 %1) #0 {
  %3 = alloca %struct.ck_barrier_mcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ck_barrier_mcs* %0, %struct.ck_barrier_mcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %7, i32 0, i32 6
  %9 = call i32 @ck_pr_store_uint(i32* %8, i32 0)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %150, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %153

14:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %56, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 2
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 1
  %25 = icmp ult i32 %22, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1, i32 0
  %28 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %28, i64 %30
  %32 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %27, i32* %36, align 4
  %37 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %37, i64 %39
  %41 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %47, i64 %49
  %51 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %46, i32* %55, align 4
  br label %56

56:                                               ; preds = %18
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %63, i64 %65
  %67 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %66, i32 0, i32 1
  br label %82

68:                                               ; preds = %59
  %69 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sub i32 %70, 1
  %72 = lshr i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %69, i64 %73
  %75 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sub i32 %77, 1
  %79 = and i32 %78, 3
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  br label %82

82:                                               ; preds = %68, %62
  %83 = phi i32* [ %67, %62 ], [ %81, %68 ]
  %84 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %84, i64 %86
  %88 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %87, i32 0, i32 4
  store i32* %83, i32** %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %89, 1
  %91 = add i32 %90, 1
  %92 = load i32, i32* %4, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %82
  %95 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %95, i64 %97
  %99 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %98, i32 0, i32 1
  br label %108

100:                                              ; preds = %82
  %101 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 %102, 1
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %101, i64 %105
  %107 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %106, i32 0, i32 0
  br label %108

108:                                              ; preds = %100, %94
  %109 = phi i32* [ %99, %94 ], [ %107, %100 ]
  %110 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %110, i64 %112
  %114 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %113, i32 0, i32 2
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  store i32* %109, i32** %116, align 8
  %117 = load i32, i32* %5, align 4
  %118 = shl i32 %117, 1
  %119 = add i32 %118, 2
  %120 = load i32, i32* %4, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %123, i64 %125
  %127 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %126, i32 0, i32 1
  br label %136

128:                                              ; preds = %108
  %129 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = shl i32 %130, 1
  %132 = add i32 %131, 2
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %129, i64 %133
  %135 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %134, i32 0, i32 0
  br label %136

136:                                              ; preds = %128, %122
  %137 = phi i32* [ %127, %122 ], [ %135, %128 ]
  %138 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %138, i64 %140
  %142 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %141, i32 0, i32 2
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* %137, i32** %144, align 8
  %145 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %145, i64 %147
  %149 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  br label %150

150:                                              ; preds = %136
  %151 = load i32, i32* %5, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %10

153:                                              ; preds = %10
  ret void
}

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
