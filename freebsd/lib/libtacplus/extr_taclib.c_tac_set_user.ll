; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_set_user(%struct.tac_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca i8*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %6 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %7 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %6, i32 0, i32 0
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %17 = call i32 @save_str(%struct.tac_handle* %5, i32* %7, i8* %8, i32 %16)
  ret i32 %17
}

declare dso_local i32 @save_str(%struct.tac_handle*, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
