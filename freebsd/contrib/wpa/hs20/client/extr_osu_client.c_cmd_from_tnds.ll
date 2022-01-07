; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_from_tnds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_from_tnds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not read or parse '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i8*, i8*)* @cmd_from_tnds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_from_tnds(%struct.hs20_osu_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @node_from_file(i32 %11, i8* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @tnds_to_mo(i32 %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %30 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @node_to_file(i32 %31, i8* %32, i32* %33)
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @xml_node_free(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %28, %20
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @xml_node_free(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32* @tnds_to_mo(i32, i32*) #1

declare dso_local i32 @node_to_file(i32, i8*, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
