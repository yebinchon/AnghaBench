; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c__initialize_typeprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c__initialize_typeprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ptype\00", align 1
@class_vars = common dso_local global i32 0, align 4
@ptype_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [237 x i8] c"Print definition of type TYPE.\0AArgument may be a type name defined by typedef, or \22struct STRUCT-TAG\22\0Aor \22class CLASS-NAME\22 or \22union UNION-TAG\22 or \22enum ENUM-TAG\22.\0AThe selected stack frame's lexical context is used to look up the name.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"whatis\00", align 1
@whatis_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Print data type of expression EXP.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_typeprint() #0 {
  %1 = load i32, i32* @class_vars, align 4
  %2 = load i32, i32* @ptype_command, align 4
  %3 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @class_vars, align 4
  %5 = load i32, i32* @whatis_command, align 4
  %6 = call i32 @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
