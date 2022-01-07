; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_delete_extra_properties_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_delete_extra_properties_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_extra_properties_strings }
%struct.ena_extra_properties_strings = type { i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_delete_extra_properties_strings(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_extra_properties_strings*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %4 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %4, i32 0, i32 1
  store %struct.ena_extra_properties_strings* %5, %struct.ena_extra_properties_strings** %3, align 8
  %6 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %7 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %15 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %18 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %21 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %24 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ENA_MEM_FREE_COHERENT(i32 %13, i32 %16, i32* %19, i32 %22, i32 %25)
  %27 = load %struct.ena_extra_properties_strings*, %struct.ena_extra_properties_strings** %3, align 8
  %28 = getelementptr inbounds %struct.ena_extra_properties_strings, %struct.ena_extra_properties_strings* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @ENA_MEM_FREE_COHERENT(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
