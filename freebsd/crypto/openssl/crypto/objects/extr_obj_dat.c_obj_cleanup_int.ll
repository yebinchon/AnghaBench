; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_dat.c_obj_cleanup_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_dat.c_obj_cleanup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@added = common dso_local global i32* null, align 8
@cleanup1_doall = common dso_local global i32 0, align 4
@cleanup2_doall = common dso_local global i32 0, align 4
@cleanup3_doall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obj_cleanup_int() #0 {
  %1 = load i32*, i32** @added, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %18

4:                                                ; preds = %0
  %5 = load i32*, i32** @added, align 8
  %6 = call i32 @lh_ADDED_OBJ_set_down_load(i32* %5, i32 0)
  %7 = load i32*, i32** @added, align 8
  %8 = load i32, i32* @cleanup1_doall, align 4
  %9 = call i32 @lh_ADDED_OBJ_doall(i32* %7, i32 %8)
  %10 = load i32*, i32** @added, align 8
  %11 = load i32, i32* @cleanup2_doall, align 4
  %12 = call i32 @lh_ADDED_OBJ_doall(i32* %10, i32 %11)
  %13 = load i32*, i32** @added, align 8
  %14 = load i32, i32* @cleanup3_doall, align 4
  %15 = call i32 @lh_ADDED_OBJ_doall(i32* %13, i32 %14)
  %16 = load i32*, i32** @added, align 8
  %17 = call i32 @lh_ADDED_OBJ_free(i32* %16)
  store i32* null, i32** @added, align 8
  br label %18

18:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @lh_ADDED_OBJ_set_down_load(i32*, i32) #1

declare dso_local i32 @lh_ADDED_OBJ_doall(i32*, i32) #1

declare dso_local i32 @lh_ADDED_OBJ_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
