; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_remotely.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_remotely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"remote config from %s\00", align 1
@cfgt = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CONF_SOURCE_NTPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Finished Parsing!!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_remotely(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [128 x i8], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @stoa(i32* %5)
  %7 = call i32 @snprintf(i8* %4, i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %9 = call i32 @lex_init_stack(i8* %8, i32* null)
  %10 = call i32 @init_syntax_tree(%struct.TYPE_7__* @cfgt)
  %11 = call i32 (...) @yyparse()
  %12 = call i32 (...) @lex_drop_stack()
  %13 = load i32, i32* @CONF_SOURCE_NTPQ, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfgt, i32 0, i32 0, i32 1), align 4
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfgt, i32 0, i32 1), align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @stoa(i32* %15)
  %17 = call i32 @estrdup(i8* %16)
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfgt, i32 0, i32 0, i32 0, i32 0), align 4
  %18 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @save_and_apply_config_tree(i32 %19)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @lex_init_stack(i8*, i32*) #1

declare dso_local i32 @init_syntax_tree(%struct.TYPE_7__*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @lex_drop_stack(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @save_and_apply_config_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
