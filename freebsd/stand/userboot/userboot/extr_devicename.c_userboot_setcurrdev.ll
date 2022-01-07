; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_devicename.c_userboot_setcurrdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_devicename.c_userboot_setcurrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32 }
%struct.disk_devdesc = type { i32 }

@EV_NOHOOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userboot_setcurrdev(%struct.env_var* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.env_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca i32, align 4
  store %struct.env_var* %0, %struct.env_var** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @userboot_parsedev(%struct.disk_devdesc** %8, i8* %10, i32* null)
  store i32 %11, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %17 = call i32 @free(%struct.disk_devdesc* %16)
  %18 = load %struct.env_var*, %struct.env_var** %5, align 8
  %19 = getelementptr inbounds %struct.env_var, %struct.env_var* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EV_NOHOOK, align 4
  %23 = or i32 %21, %22
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @env_setenv(i32 %20, i32 %23, i8* %24, i32* null, i32* null)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @userboot_parsedev(%struct.disk_devdesc**, i8*, i32*) #1

declare dso_local i32 @free(%struct.disk_devdesc*) #1

declare dso_local i32 @env_setenv(i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
