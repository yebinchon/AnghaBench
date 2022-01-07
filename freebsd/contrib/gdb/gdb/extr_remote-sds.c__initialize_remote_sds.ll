; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c__initialize_remote_sds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c__initialize_remote_sds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sds_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sdstimeout\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_integer = common dso_local global i32 0, align 4
@sds_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Set timeout value for sds read.\0A\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sds\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@sds_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Send a command to the SDS monitor.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_sds() #0 {
  %1 = call i32 (...) @init_sds_ops()
  %2 = call i32 @add_target(i32* @sds_ops)
  %3 = load i32, i32* @no_class, align 4
  %4 = load i32, i32* @var_integer, align 4
  %5 = call i32 @add_set_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* bitcast (i32* @sds_timeout to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %6 = call i32 @add_show_from_set(i32 %5, i32* @showlist)
  %7 = load i32, i32* @class_obscure, align 4
  %8 = load i32, i32* @sds_command, align 4
  %9 = call i32 @add_com(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_sds_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
