; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_delkey_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_delkey_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"keyno\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Key number has to be specified.\00", align 1
@G_ELI_MAXMKEYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid '%s' argument.\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Master Key %u is not set.\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"This is the last Master Key. Use '-f' option if you really want to remove it.\00", align 1
@G_ELI_MKEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i8*)* @eli_delkey_detached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_delkey_detached(%struct.gctl_req* %0, i8* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_eli_metadata, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @eli_metadata_read(%struct.gctl_req* %11, i8* %12, %struct.g_eli_metadata* %5)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 @gctl_get_int(%struct.gctl_req* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @arc4random_buf(i8* %23, i32 8)
  br label %84

25:                                               ; preds = %16
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call i32 @gctl_get_int(%struct.gctl_req* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32 @gctl_get_intmax(%struct.gctl_req* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %34 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %89

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @G_ELI_MAXMKEYS, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %89

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %89

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %72 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %71, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0))
  br label %89

73:                                               ; preds = %67, %57
  %74 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %78 = mul i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %83 = call i32 @arc4random_buf(i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %21
  %85 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @eli_metadata_store(%struct.gctl_req* %85, i8* %86, %struct.g_eli_metadata* %5)
  %88 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 16)
  br label %89

89:                                               ; preds = %84, %70, %53, %40, %32, %15
  ret void
}

declare dso_local i32 @eli_metadata_read(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @arc4random_buf(i8*, i32) #1

declare dso_local i32 @gctl_get_intmax(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @eli_metadata_store(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
