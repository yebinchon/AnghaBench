; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/stripe/extr_geom_stripe.c_stripe_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/stripe/extr_geom_stripe.c_stripe_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_stripe_metadata = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@G_STRIPE_MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Can't read metadata from %s: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Not fully done.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Metadata on %s:\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @stripe_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_dump(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_stripe_metadata, align 4
  %4 = alloca %struct.g_stripe_metadata, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %9 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %10 = call i32 @gctl_get_int(%struct.gctl_req* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %15 = call i32 @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %49

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @gctl_get_ascii(%struct.gctl_req* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast %struct.g_stripe_metadata* %4 to i32*
  %27 = load i32, i32* @G_STRIPE_MAGIC, align 4
  %28 = call i32 @g_metadata_read(i8* %25, i32* %26, i32 4, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %35)
  %37 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %38 = call i32 @gctl_error(%struct.gctl_req* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %46

39:                                               ; preds = %21
  %40 = bitcast %struct.g_stripe_metadata* %4 to i32*
  %41 = call i32 @stripe_metadata_decode(i32* %40, %struct.g_stripe_metadata* %3)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = call i32 @stripe_metadata_dump(%struct.g_stripe_metadata* %3)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %31
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %17

49:                                               ; preds = %13, %17
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @g_metadata_read(i8*, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @stripe_metadata_decode(i32*, %struct.g_stripe_metadata*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @stripe_metadata_dump(%struct.g_stripe_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
