; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_add_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"syncml:metinf\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Chr\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32*, i8*, i8*)* @add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_item(%struct.hs20_osu_client* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @xml_node_create(i32 %13, i32* %14, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @oma_dm_add_locuri(%struct.hs20_osu_client* %16, i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %21 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @xml_node_create(i32 %22, i32* %23, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %24, i32** %10, align 8
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %26 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @xml_node_create_text_ns(i32 %27, i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @xml_node_create_text_ns(i32 %32, i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @xml_node_create_text(i32 %37, i32* %38, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %39)
  ret void
}

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @oma_dm_add_locuri(%struct.hs20_osu_client*, i32*, i8*, i8*) #1

declare dso_local i32 @xml_node_create_text_ns(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @xml_node_create_text(i32, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
