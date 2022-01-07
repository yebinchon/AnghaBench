; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_parse_server_match_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_parse_server_match_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"reprocess config\00", align 1
@cfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_server_match_config(i32* %0, %struct.connection_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.connection_info*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.connection_info* %1, %struct.connection_info** %4, align 8
  %6 = call i32 @initialize_server_options(i32* %5)
  %7 = load i32, i32* @cfg, align 4
  %8 = load %struct.connection_info*, %struct.connection_info** %4, align 8
  %9 = call i32 @parse_server_config(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.connection_info* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @copy_set_server_options(i32* %10, i32* %5, i32 0)
  ret void
}

declare dso_local i32 @initialize_server_options(i32*) #1

declare dso_local i32 @parse_server_config(i32*, i8*, i32, %struct.connection_info*) #1

declare dso_local i32 @copy_set_server_options(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
