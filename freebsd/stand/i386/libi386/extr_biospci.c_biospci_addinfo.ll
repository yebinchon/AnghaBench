; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_addinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_addinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_class = type { i8* }
%struct.pci_subclass = type { i8* }
%struct.pci_progif = type { i8* }
%struct.pnpinfo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_class*, %struct.pci_subclass*, %struct.pci_progif*)* @biospci_addinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biospci_addinfo(i32 %0, %struct.pci_class* %1, %struct.pci_subclass* %2, %struct.pci_progif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_class*, align 8
  %7 = alloca %struct.pci_subclass*, align 8
  %8 = alloca %struct.pci_progif*, align 8
  %9 = alloca %struct.pnpinfo*, align 8
  %10 = alloca [80 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.pci_class* %1, %struct.pci_class** %6, align 8
  store %struct.pci_subclass* %2, %struct.pci_subclass** %7, align 8
  store %struct.pci_progif* %3, %struct.pci_progif** %8, align 8
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = load %struct.pci_progif*, %struct.pci_progif** %8, align 8
  %13 = getelementptr inbounds %struct.pci_progif, %struct.pci_progif* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %18 = load %struct.pci_progif*, %struct.pci_progif** %8, align 8
  %19 = getelementptr inbounds %struct.pci_progif, %struct.pci_progif* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcat(i8* %17, i8* %20)
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %16, %4
  %25 = load %struct.pci_subclass*, %struct.pci_subclass** %7, align 8
  %26 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %31 = load %struct.pci_subclass*, %struct.pci_subclass** %7, align 8
  %32 = getelementptr inbounds %struct.pci_subclass, %struct.pci_subclass* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcat(i8* %30, i8* %33)
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.pci_class*, %struct.pci_class** %6, align 8
  %39 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %44 = load %struct.pci_class*, %struct.pci_class** %6, align 8
  %45 = getelementptr inbounds %struct.pci_class, %struct.pci_class* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcat(i8* %43, i8* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = call %struct.pnpinfo* (...) @pnp_allocinfo()
  store %struct.pnpinfo* %49, %struct.pnpinfo** %9, align 8
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %51 = call i32 @strdup(i8* %50)
  %52 = load %struct.pnpinfo*, %struct.pnpinfo** %9, align 8
  %53 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.pnpinfo*, %struct.pnpinfo** %9, align 8
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %59 = call i32 @pnp_addident(%struct.pnpinfo* %57, i8* %58)
  %60 = load %struct.pnpinfo*, %struct.pnpinfo** %9, align 8
  %61 = call i32 @pnp_addinfo(%struct.pnpinfo* %60)
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.pnpinfo* @pnp_allocinfo(...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pnp_addident(%struct.pnpinfo*, i8*) #1

declare dso_local i32 @pnp_addinfo(%struct.pnpinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
