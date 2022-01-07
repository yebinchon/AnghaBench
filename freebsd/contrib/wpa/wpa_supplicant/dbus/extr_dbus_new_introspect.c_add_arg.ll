; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"<arg name=\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" type=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" direction=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i8*, i8*, i8*)* @add_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_arg(%struct.wpabuf* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @wpabuf_printf(%struct.wpabuf* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @wpabuf_printf(%struct.wpabuf* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @wpabuf_printf(%struct.wpabuf* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %27 = call i32 @wpabuf_put_str(%struct.wpabuf* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
