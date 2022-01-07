; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_to_tnds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_to_tnds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not read or parse '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i8*, i8*, i8*, i32)* @cmd_to_tnds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_to_tnds(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %14 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @node_from_file(i32 %15, i8* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %52

24:                                               ; preds = %5
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %26 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32* @mo_to_tnds(i32 %27, i32* %28, i32 %29, i8* %30, i32* null)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @node_to_file(i32 %37, i8* %38, i32* %39)
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @xml_node_free(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %34, %24
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @xml_node_free(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %46, %20
  ret void
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32* @mo_to_tnds(i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @node_to_file(i32, i8*, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
