; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_add_id_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_add_id_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_aka_data = type { i32* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_aka_data*, %struct.wpabuf*)* @eap_aka_add_id_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_add_id_msg(%struct.eap_aka_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %11 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = call i32* @wpabuf_dup(%struct.wpabuf* %15)
  %17 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %18 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 0
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %9
  %26 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %27 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %26, i32 0, i32 0
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = call i32 @wpabuf_len(%struct.wpabuf* %28)
  %30 = call i64 @wpabuf_resize(i32** %27, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %39

33:                                               ; preds = %25
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %38 = call i32 @wpabuf_put_buf(i32* %36, %struct.wpabuf* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %32, %14, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_resize(i32**, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(i32*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
