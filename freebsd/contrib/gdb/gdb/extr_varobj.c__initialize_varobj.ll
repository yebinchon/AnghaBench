; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c__initialize_varobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c__initialize_varobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAROBJ_TABLE_SIZE = common dso_local global i32 0, align 4
@varobj_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"debugvarobj\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@varobjdebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Set varobj debugging.\0AWhen non-zero, varobj debugging is enabled.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_varobj() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @VAROBJ_TABLE_SIZE, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 8, %3
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @xmalloc(i32 %6)
  store i32 %7, i32* @varobj_table, align 4
  %8 = load i32, i32* @varobj_table, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @memset(i32 %8, i32 0, i32 %9)
  %11 = load i32, i32* @class_maintenance, align 4
  %12 = load i32, i32* @var_zinteger, align 4
  %13 = call i32 @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i8* bitcast (i32* @varobjdebug to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %14 = call i32 @add_show_from_set(i32 %13, i32* @showlist)
  ret void
}

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
