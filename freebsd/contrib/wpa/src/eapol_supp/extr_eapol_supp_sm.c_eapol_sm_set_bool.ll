; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_set_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @eapol_sm_set_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_set_bool(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.eapol_sm*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.eapol_sm*
  store %struct.eapol_sm* %9, %struct.eapol_sm** %7, align 8
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %11 = icmp eq %struct.eapol_sm* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %55

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %55 [
    i32 130, label %15
    i32 131, label %19
    i32 135, label %23
    i32 132, label %27
    i32 134, label %31
    i32 133, label %35
    i32 128, label %39
    i32 137, label %43
    i32 136, label %47
    i32 129, label %51
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  br label %55

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %22 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  br label %55

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %26 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  br label %55

27:                                               ; preds = %13
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %30 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  br label %55

31:                                               ; preds = %13
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %34 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  br label %55

35:                                               ; preds = %13
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %38 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %55

39:                                               ; preds = %13
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %42 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  br label %55

43:                                               ; preds = %13
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %46 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %55

47:                                               ; preds = %13
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %50 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %55

51:                                               ; preds = %13
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.eapol_sm*, %struct.eapol_sm** %7, align 8
  %54 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %12, %13, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
