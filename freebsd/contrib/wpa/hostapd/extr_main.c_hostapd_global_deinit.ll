; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_global_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_global_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32* }

@wpa_drivers = common dso_local global %struct.TYPE_3__** null, align 8
@global = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hostapd_global_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_global_deinit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @wpa_drivers, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i1 [ false, %6 ], [ %15, %13 ]
  br i1 %17, label %18, label %43

18:                                               ; preds = %16
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %40

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @wpa_drivers, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %33(i32 %38)
  br label %40

40:                                               ; preds = %26, %25
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6

43:                                               ; preds = %16
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %45 = call i32 @os_free(i32* %44)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %46 = call i32 (...) @random_deinit()
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @eloop_destroy()
  br label %51

51:                                               ; preds = %49, %43
  %52 = call i32 (...) @closelog()
  %53 = call i32 (...) @eap_server_unregister_methods()
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @os_daemonize_terminate(i8* %54)
  ret void
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @random_deinit(...) #1

declare dso_local i32 @eloop_destroy(...) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @eap_server_unregister_methods(...) #1

declare dso_local i32 @os_daemonize_terminate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
