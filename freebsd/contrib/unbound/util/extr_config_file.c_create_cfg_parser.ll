; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_create_cfg_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_create_cfg_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_parser_state = type { i8*, i32, i8*, %struct.config_file*, i64 }
%struct.config_file = type { i32 }

@create_cfg_parser.st = internal global %struct.config_parser_state zeroinitializer, align 8
@cfg_parser = common dso_local global %struct.config_parser_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*, i8*, i8*)* @create_cfg_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_cfg_parser(%struct.config_file* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.config_parser_state* @create_cfg_parser.st, %struct.config_parser_state** @cfg_parser, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.config_parser_state*, %struct.config_parser_state** @cfg_parser, align 8
  %9 = getelementptr inbounds %struct.config_parser_state, %struct.config_parser_state* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.config_parser_state*, %struct.config_parser_state** @cfg_parser, align 8
  %11 = getelementptr inbounds %struct.config_parser_state, %struct.config_parser_state* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = load %struct.config_parser_state*, %struct.config_parser_state** @cfg_parser, align 8
  %13 = getelementptr inbounds %struct.config_parser_state, %struct.config_parser_state* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.config_file*, %struct.config_file** %4, align 8
  %15 = load %struct.config_parser_state*, %struct.config_parser_state** @cfg_parser, align 8
  %16 = getelementptr inbounds %struct.config_parser_state, %struct.config_parser_state* %15, i32 0, i32 3
  store %struct.config_file* %14, %struct.config_file** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.config_parser_state*, %struct.config_parser_state** @cfg_parser, align 8
  %19 = getelementptr inbounds %struct.config_parser_state, %struct.config_parser_state* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = call i32 (...) @init_cfg_parse()
  ret void
}

declare dso_local i32 @init_cfg_parse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
