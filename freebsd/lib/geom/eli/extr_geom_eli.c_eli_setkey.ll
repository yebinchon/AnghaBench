; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i8* }
%struct.g_eli_metadata = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"Note, that the master key encrypted with old keys and/or passphrase may still exists in a metadata backup file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_setkey(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_eli_metadata, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %6 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %7 = call i32 @gctl_get_int(%struct.gctl_req* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %12 = call i32 @gctl_error(%struct.gctl_req* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %15 = call i8* @gctl_get_ascii(%struct.gctl_req* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @eli_metadata_read(%struct.gctl_req* %16, i8* %17, %struct.g_eli_metadata* %3)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %47

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @eli_is_attached(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %27 = call i32 @eli_setkey_attached(%struct.gctl_req* %26, %struct.g_eli_metadata* %3)
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @eli_setkey_detached(%struct.gctl_req* %29, i8* %30, %struct.g_eli_metadata* %3)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %34 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %39 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %32
  %46 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %10, %20, %45, %37
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @eli_metadata_read(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i64 @eli_is_attached(i8*) #1

declare dso_local i32 @eli_setkey_attached(%struct.gctl_req*, %struct.g_eli_metadata*) #1

declare dso_local i32 @eli_setkey_detached(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
