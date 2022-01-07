; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_copy_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_copy_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf**, %struct.wpabuf*)* @eap_copy_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_copy_buf(%struct.wpabuf** %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf**, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf** %0, %struct.wpabuf*** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %12 = call i32 @wpabuf_free(%struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %13)
  %15 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  store %struct.wpabuf* %14, %struct.wpabuf** %15, align 8
  %16 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %18 = icmp ne %struct.wpabuf* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 -1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %9, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
