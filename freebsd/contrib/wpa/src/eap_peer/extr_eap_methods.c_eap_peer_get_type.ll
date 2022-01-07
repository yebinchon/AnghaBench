; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_peer_get_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_peer_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i32, i32, %struct.eap_method* }

@eap_methods = common dso_local global %struct.eap_method* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_get_type(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.eap_method*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %7, %struct.eap_method** %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %10 = icmp ne %struct.eap_method* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %13 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @os_strcmp(i32 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %20 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %24 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %29 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %28, i32 0, i32 3
  %30 = load %struct.eap_method*, %struct.eap_method** %29, align 8
  store %struct.eap_method* %30, %struct.eap_method** %6, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @EAP_TYPE_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
