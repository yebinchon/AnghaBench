; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"usage: bsdlabel disk\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09\09(to read label)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\09bsdlabel -w [-n] [-m machine] disk [type]\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\09\09(to write label with existing boot program)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\09bsdlabel -e [-n] [-m machine] disk\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\09\09(to edit label)\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09bsdlabel -R [-n] [-m machine] disk protofile\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\09\09(to restore label with existing boot program)\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\09bsdlabel -B [-b boot] [-m machine] disk\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"\09\09(to install boot program with existing on-disk label)\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\09bsdlabel -w -B [-n] [-b boot] [-m machine] disk [type]\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\09\09(to write label and install boot program)\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"\09bsdlabel -R -B [-n] [-b boot] [-m machine] disk protofile\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\09\09(to restore label and install boot program)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %3 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
