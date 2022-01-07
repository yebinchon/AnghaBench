; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_setkey_attached.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_setkey_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i32 }

@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_eli_metadata*)* @eli_setkey_attached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_setkey_attached(%struct.gctl_req* %0, %struct.g_eli_metadata* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_eli_metadata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_eli_metadata* %1, %struct.g_eli_metadata** %4, align 8
  %11 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %16 = call i32 @gctl_get_intmax(%struct.gctl_req* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %4, align 8
  %22 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %4, align 8
  %25 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %4, align 8
  %30 = call i32* @eli_genkey(%struct.gctl_req* %28, %struct.g_eli_metadata* %29, i8* %14, i32 1)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = trunc i64 %12 to i32
  %34 = call i32 @explicit_bzero(i8* %14, i32 %33)
  store i32 1, i32* %10, align 4
  br label %61

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %4, align 8
  %40 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %46 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %4, align 8
  %47 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %46, i32 0, i32 0
  %48 = call i32 @gctl_change_param(%struct.gctl_req* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %44, %38, %35
  %54 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %55 = trunc i64 %12 to i32
  %56 = call i32 @gctl_ro_param(%struct.gctl_req* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %14)
  %57 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %58 = call i32 @gctl_issue(%struct.gctl_req* %57)
  %59 = trunc i64 %12 to i32
  %60 = call i32 @explicit_bzero(i8* %14, i32 %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %53, %32
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %61, %61
  ret void

65:                                               ; preds = %61
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gctl_get_intmax(%struct.gctl_req*, i8*) #2

declare dso_local i32* @eli_genkey(%struct.gctl_req*, %struct.g_eli_metadata*, i8*, i32) #2

declare dso_local i32 @explicit_bzero(i8*, i32) #2

declare dso_local i32 @gctl_change_param(%struct.gctl_req*, i8*, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i32 @gctl_issue(%struct.gctl_req*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
