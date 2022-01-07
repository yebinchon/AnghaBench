; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32, %struct.env_var* }

@environ = common dso_local global %struct.env_var* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.env_var* @env_getenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.env_var*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.env_var*, %struct.env_var** @environ, align 8
  store %struct.env_var* %4, %struct.env_var** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.env_var*, %struct.env_var** %3, align 8
  %7 = icmp ne %struct.env_var* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.env_var*, %struct.env_var** %3, align 8
  %10 = getelementptr inbounds %struct.env_var, %struct.env_var* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcmp(i32 %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %21

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.env_var*, %struct.env_var** %3, align 8
  %19 = getelementptr inbounds %struct.env_var, %struct.env_var* %18, i32 0, i32 1
  %20 = load %struct.env_var*, %struct.env_var** %19, align 8
  store %struct.env_var* %20, %struct.env_var** %3, align 8
  br label %5

21:                                               ; preds = %15, %5
  %22 = load %struct.env_var*, %struct.env_var** %3, align 8
  ret %struct.env_var* %22
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
