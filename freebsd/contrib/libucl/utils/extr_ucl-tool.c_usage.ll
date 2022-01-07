; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_ucl-tool.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_ucl-tool.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"Usage: %s [--help] [-i|--in file] [-o|--out file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"    [-s|--schema file] [-f|--format format]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"  --help   - print this message and exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"  --in     - specify input filename (default: standard input)\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"  --out    - specify output filename (default: standard output)\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"  --schema - specify schema file for validation\0A\00", align 1
@.str.6 = private unnamed_addr constant [87 x i8] c"  --format - output format. Options: ucl (default), json, compact_json, yaml, msgpack\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
