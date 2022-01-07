; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_next_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_next_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32 }
%struct.ck_hs_iterator = type { %struct.ck_hs_map* }
%struct.ck_hs_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_next_spmc(%struct.ck_hs* %0, %struct.ck_hs_iterator* %1, i8** %2) #0 {
  %4 = alloca %struct.ck_hs*, align 8
  %5 = alloca %struct.ck_hs_iterator*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ck_hs_map*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %4, align 8
  store %struct.ck_hs_iterator* %1, %struct.ck_hs_iterator** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.ck_hs_iterator*, %struct.ck_hs_iterator** %5, align 8
  %9 = getelementptr inbounds %struct.ck_hs_iterator, %struct.ck_hs_iterator* %8, i32 0, i32 0
  %10 = load %struct.ck_hs_map*, %struct.ck_hs_map** %9, align 8
  store %struct.ck_hs_map* %10, %struct.ck_hs_map** %7, align 8
  %11 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %12 = icmp eq %struct.ck_hs_map* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %15 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %14, i32 0, i32 0
  %16 = call %struct.ck_hs_map* @ck_pr_load_ptr(i32* %15)
  %17 = load %struct.ck_hs_iterator*, %struct.ck_hs_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.ck_hs_iterator, %struct.ck_hs_iterator* %17, i32 0, i32 0
  store %struct.ck_hs_map* %16, %struct.ck_hs_map** %18, align 8
  store %struct.ck_hs_map* %16, %struct.ck_hs_map** %7, align 8
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %21 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %22 = load %struct.ck_hs_iterator*, %struct.ck_hs_iterator** %5, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = call i32 @_ck_hs_next(%struct.ck_hs* %20, %struct.ck_hs_map* %21, %struct.ck_hs_iterator* %22, i8** %23)
  ret i32 %24
}

declare dso_local %struct.ck_hs_map* @ck_pr_load_ptr(i32*) #1

declare dso_local i32 @_ck_hs_next(%struct.ck_hs*, %struct.ck_hs_map*, %struct.ck_hs_iterator*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
