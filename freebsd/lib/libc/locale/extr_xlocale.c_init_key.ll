; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_init_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@locale_info_key = common dso_local global i32 0, align 4
@xlocale_release = common dso_local global i32 0, align 4
@fake_tls = common dso_local global i32 0, align 4
@__has_thread_locale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_key() #0 {
  %1 = load i32, i32* @xlocale_release, align 4
  %2 = call i32 @pthread_key_create(i32* @locale_info_key, i32 %1)
  %3 = load i32, i32* @locale_info_key, align 4
  %4 = call i32 @pthread_setspecific(i32 %3, i8* inttoptr (i64 42 to i8*))
  %5 = load i32, i32* @locale_info_key, align 4
  %6 = call i8* @pthread_getspecific(i32 %5)
  %7 = icmp eq i8* %6, inttoptr (i64 42 to i8*)
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @locale_info_key, align 4
  %10 = call i32 @pthread_setspecific(i32 %9, i8* null)
  br label %12

11:                                               ; preds = %0
  store i32 1, i32* @fake_tls, align 4
  br label %12

12:                                               ; preds = %11, %8
  store i32 1, i32* @__has_thread_locale, align 4
  %13 = call i32 (...) @__detect_path_locale()
  ret void
}

declare dso_local i32 @pthread_key_create(i32*, i32) #1

declare dso_local i32 @pthread_setspecific(i32, i8*) #1

declare dso_local i8* @pthread_getspecific(i32) #1

declare dso_local i32 @__detect_path_locale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
