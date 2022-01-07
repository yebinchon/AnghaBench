; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_parse_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_parse_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { %struct.eap_teap_pac* }

@.str = private unnamed_addr constant [23 x i8] c"END line without START\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_teap_pac**, %struct.eap_teap_pac**)* @eap_teap_parse_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_teap_parse_end(%struct.eap_teap_pac** %0, %struct.eap_teap_pac** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_teap_pac**, align 8
  %5 = alloca %struct.eap_teap_pac**, align 8
  %6 = alloca %struct.eap_teap_pac*, align 8
  store %struct.eap_teap_pac** %0, %struct.eap_teap_pac*** %4, align 8
  store %struct.eap_teap_pac** %1, %struct.eap_teap_pac*** %5, align 8
  %7 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  %8 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %9 = icmp ne %struct.eap_teap_pac* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %4, align 8
  %13 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %12, align 8
  %14 = icmp ne %struct.eap_teap_pac* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %4, align 8
  %17 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %16, align 8
  store %struct.eap_teap_pac* %17, %struct.eap_teap_pac** %6, align 8
  br label %18

18:                                               ; preds = %23, %15
  %19 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %20 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %19, i32 0, i32 0
  %21 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %20, align 8
  %22 = icmp ne %struct.eap_teap_pac* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %25 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %24, i32 0, i32 0
  %26 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %25, align 8
  store %struct.eap_teap_pac* %26, %struct.eap_teap_pac** %6, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  %29 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %28, align 8
  %30 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %6, align 8
  %31 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %30, i32 0, i32 0
  store %struct.eap_teap_pac* %29, %struct.eap_teap_pac** %31, align 8
  br label %36

32:                                               ; preds = %11
  %33 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  %34 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %33, align 8
  %35 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %4, align 8
  store %struct.eap_teap_pac* %34, %struct.eap_teap_pac** %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %5, align 8
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %37, align 8
  store i8* null, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
