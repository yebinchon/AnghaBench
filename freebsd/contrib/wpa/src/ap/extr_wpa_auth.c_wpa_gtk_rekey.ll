; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_gtk_rekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_gtk_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group* }
%struct.wpa_group = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_gtk_rekey(%struct.wpa_authenticator* %0) #0 {
  %2 = alloca %struct.wpa_authenticator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %2, align 8
  %6 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %7 = icmp eq %struct.wpa_authenticator* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %10, i32 0, i32 0
  %12 = load %struct.wpa_group*, %struct.wpa_group** %11, align 8
  store %struct.wpa_group* %12, %struct.wpa_group** %5, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %34, %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %29 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %30 = call i32 @wpa_gtk_update(%struct.wpa_authenticator* %28, %struct.wpa_group* %29)
  %31 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %2, align 8
  %32 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %33 = call i32 @wpa_group_config_group_keys(%struct.wpa_authenticator* %31, %struct.wpa_group* %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %13

37:                                               ; preds = %8, %13
  ret void
}

declare dso_local i32 @wpa_gtk_update(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_config_group_keys(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
