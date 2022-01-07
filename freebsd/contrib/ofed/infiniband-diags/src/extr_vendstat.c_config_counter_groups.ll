; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_config_counter_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_vendstat.c_config_counter_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [56 x i8] c"counter_groups_config: configuring group0 %d group1 %d\0A\00", align 1
@cg0 = common dso_local global i32 0, align 4
@cg1 = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@IB_MLX_VENDOR_CLASS = common dso_local global i32 0, align 4
@IB_MAD_METHOD_SET = common dso_local global i32 0, align 4
@IB_MLX_IS4_CONFIG_COUNTER_GROUP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"config counter group set failure\0A\00", align 1
@IB_MAD_METHOD_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"config counter group query failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @config_counter_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_counter_groups(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [1024 x i8]* %6 to i8**
  %9 = call i32 @memset(i8** %8, i32 0, i32 1024)
  %10 = bitcast [1024 x i8]* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i32, i32* @cg0, align 4
  %12 = load i32, i32* @cg1, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @cg0, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %16, i8** %21, align 8
  %22 = load i32, i32* @cg1, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @srcport, align 4
  %32 = load i32, i32* @IB_MLX_VENDOR_CLASS, align 4
  %33 = load i32, i32* @IB_MAD_METHOD_SET, align 4
  %34 = load i32, i32* @IB_MLX_IS4_CONFIG_COUNTER_GROUP, align 4
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %37 = call i64 @do_vendor(i32* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

42:                                               ; preds = %2
  %43 = bitcast [1024 x i8]* %6 to i8**
  %44 = call i32 @memset(i8** %43, i32 0, i32 1024)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @srcport, align 4
  %47 = load i32, i32* @IB_MLX_VENDOR_CLASS, align 4
  %48 = load i32, i32* @IB_MAD_METHOD_GET, align 4
  %49 = load i32, i32* @IB_MLX_IS4_CONFIG_COUNTER_GROUP, align 4
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %52 = call i64 @do_vendor(i32* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %39
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @do_vendor(i32*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
