; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macalg = type { i32* }
%struct.sshmac = type { i32 }

@macs = common dso_local global %struct.macalg* null, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_setup(%struct.sshmac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshmac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macalg*, align 8
  store %struct.sshmac* %0, %struct.sshmac** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.macalg*, %struct.macalg** @macs, align 8
  store %struct.macalg* %7, %struct.macalg** %6, align 8
  br label %8

8:                                                ; preds = %29, %2
  %9 = load %struct.macalg*, %struct.macalg** %6, align 8
  %10 = getelementptr inbounds %struct.macalg, %struct.macalg* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.macalg*, %struct.macalg** %6, align 8
  %16 = getelementptr inbounds %struct.macalg, %struct.macalg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcmp(i8* %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %23 = icmp ne %struct.sshmac* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %26 = load %struct.macalg*, %struct.macalg** %6, align 8
  %27 = call i32 @mac_setup_by_alg(%struct.sshmac* %25, %struct.macalg* %26)
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load %struct.macalg*, %struct.macalg** %6, align 8
  %31 = getelementptr inbounds %struct.macalg, %struct.macalg* %30, i32 1
  store %struct.macalg* %31, %struct.macalg** %6, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @mac_setup_by_alg(%struct.sshmac*, %struct.macalg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
