; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_add_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_add_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MsgRef\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CmdRef\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Cmd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"TargetRef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i32*, i32, i32, i32, i8*, i32, i8*)* @add_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_status(%struct.hs20_osu_client* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hs20_osu_client*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %20 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call i32* @xml_node_create(i32 %21, i32* %22, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %18, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %74

27:                                               ; preds = %8
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @oma_dm_add_cmdid(%struct.hs20_osu_client* %28, i32* %29, i32 %30)
  %32 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %33 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %18, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i8* @int2str(i32 %36)
  %38 = call i32 @xml_node_create_text(i32 %34, i32* %35, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %43 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @int2str(i32 %46)
  %48 = call i32 @xml_node_create_text(i32 %44, i32* %45, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %51 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @xml_node_create_text(i32 %52, i32* %53, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %57 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i8* @int2str(i32 %60)
  %62 = call i32 @xml_node_create_text(i32 %58, i32* %59, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %17, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %49
  %66 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %67 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %18, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @xml_node_create_text(i32 %68, i32* %69, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %65, %49
  %73 = load i32*, i32** %18, align 8
  store i32* %73, i32** %9, align 8
  br label %74

74:                                               ; preds = %72, %26
  %75 = load i32*, i32** %9, align 8
  ret i32* %75
}

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @oma_dm_add_cmdid(%struct.hs20_osu_client*, i32*, i32) #1

declare dso_local i32 @xml_node_create_text(i32, i32*, i32*, i8*, i8*) #1

declare dso_local i8* @int2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
