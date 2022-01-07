; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_delkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_delkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_delkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_delkey(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %5 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %6 = call i32 @gctl_get_int(%struct.gctl_req* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %11 = call i32 @gctl_error(%struct.gctl_req* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %14 = call i8* @gctl_get_ascii(%struct.gctl_req* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @eli_is_attached(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @eli_delkey_attached(%struct.gctl_req* %19, i8* %20)
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @eli_delkey_detached(%struct.gctl_req* %23, i8* %24)
  br label %26

26:                                               ; preds = %9, %22, %18
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i64 @eli_is_attached(i8*) #1

declare dso_local i32 @eli_delkey_attached(%struct.gctl_req*, i8*) #1

declare dso_local i32 @eli_delkey_detached(%struct.gctl_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
