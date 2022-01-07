; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"[-b blocksize] [-f file | -P pipecommand] [-s fileno]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[file ...]\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"usage:\09%s %s\0A\09%s %s\0A\09%s %s\0A\09%s %s %s\0A\09%s %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"restore -i [-dhmNuvy]\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"restore -R [-dNuvy]\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"restore -r [-dNuvy]\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"restore -t [-dhNuvy]\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"restore -x [-dhmNuvy]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %5 = call i32 @done(i32 1)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
