; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_add_packet_config_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_add_packet_config_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_config = type { i8*, i8*, i32, i32 }
%struct.cmd_list_element = type { i32 }

@AUTO_BOOLEAN_AUTO = common dso_local global i32 0, align 4
@PACKET_SUPPORT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Set use of remote protocol `%s' (%s) packet\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Show current use of remote protocol `%s' (%s) packet\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s-packet\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_config*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**, i32)* @add_packet_config_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_packet_config_cmd(%struct.packet_config* %0, i8* %1, i8* %2, i32* %3, i32* %4, %struct.cmd_list_element** %5, %struct.cmd_list_element** %6, i32 %7) #0 {
  %9 = alloca %struct.packet_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cmd_list_element**, align 8
  %15 = alloca %struct.cmd_list_element**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cmd_list_element*, align 8
  %18 = alloca %struct.cmd_list_element*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.packet_config* %0, %struct.packet_config** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.cmd_list_element** %5, %struct.cmd_list_element*** %14, align 8
  store %struct.cmd_list_element** %6, %struct.cmd_list_element*** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.packet_config*, %struct.packet_config** %9, align 8
  %25 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.packet_config*, %struct.packet_config** %9, align 8
  %28 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @AUTO_BOOLEAN_AUTO, align 4
  %30 = load %struct.packet_config*, %struct.packet_config** %9, align 8
  %31 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @PACKET_SUPPORT_UNKNOWN, align 4
  %33 = load %struct.packet_config*, %struct.packet_config** %9, align 8
  %34 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %21, align 8
  %44 = load i32, i32* @class_obscure, align 4
  %45 = load %struct.packet_config*, %struct.packet_config** %9, align 8
  %46 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %45, i32 0, i32 2
  %47 = load i8*, i8** %19, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %14, align 8
  %52 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %15, align 8
  %53 = call i32 @add_setshow_auto_boolean_cmd(i8* %43, i32 %44, i32* %46, i8* %47, i8* %48, i32* %49, i32* %50, %struct.cmd_list_element** %51, %struct.cmd_list_element** %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %22, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = load i32, i32* @class_obscure, align 4
  %62 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %14, align 8
  %63 = call i32 @add_alias_cmd(i8* %59, i8* %60, i32 %61, i32 0, %struct.cmd_list_element** %62)
  %64 = load i8*, i8** %22, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = load i32, i32* @class_obscure, align 4
  %67 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %15, align 8
  %68 = call i32 @add_alias_cmd(i8* %64, i8* %65, i32 %66, i32 0, %struct.cmd_list_element** %67)
  br label %69

69:                                               ; preds = %56, %8
  ret void
}

declare dso_local i32 @xasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @add_setshow_auto_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
