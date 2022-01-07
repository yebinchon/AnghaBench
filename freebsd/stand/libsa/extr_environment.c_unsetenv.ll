; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_unsetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_unsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32 (%struct.env_var*)* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unsetenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.env_var*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.env_var* @env_getenv(i8* %5)
  store %struct.env_var* %6, %struct.env_var** %3, align 8
  %7 = icmp eq %struct.env_var* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOENT, align 4
  store i32 %9, i32* %4, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.env_var*, %struct.env_var** %3, align 8
  %12 = getelementptr inbounds %struct.env_var, %struct.env_var* %11, i32 0, i32 0
  %13 = load i32 (%struct.env_var*)*, i32 (%struct.env_var*)** %12, align 8
  %14 = icmp ne i32 (%struct.env_var*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.env_var*, %struct.env_var** %3, align 8
  %17 = getelementptr inbounds %struct.env_var, %struct.env_var* %16, i32 0, i32 0
  %18 = load i32 (%struct.env_var*)*, i32 (%struct.env_var*)** %17, align 8
  %19 = load %struct.env_var*, %struct.env_var** %3, align 8
  %20 = call i32 %18(%struct.env_var* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.env_var*, %struct.env_var** %3, align 8
  %26 = call i32 @env_discard(%struct.env_var* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.env_var* @env_getenv(i8*) #1

declare dso_local i32 @env_discard(%struct.env_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
