; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_iprop_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_iprop_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_options = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kadm5_log_init\00", align 1
@print_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"kadm5_log_foreach\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"kadm5_log_end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iprop_dump(%struct.dump_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.dump_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.dump_options* %0, %struct.dump_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load %struct.dump_options*, %struct.dump_options** %4, align 8
  %10 = getelementptr inbounds %struct.dump_options, %struct.dump_options* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dump_options*, %struct.dump_options** %4, align 8
  %13 = getelementptr inbounds %struct.dump_options, %struct.dump_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @get_kadmin_context(i32 %11, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @kadm5_log_init(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @context, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @krb5_err(i32 %21, i32 1, i64 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @print_entry, align 4
  %27 = call i64 @kadm5_log_foreach(i32* %25, i32 %26, i32* null)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @context, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @krb5_warn(i32 %31, i64 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @kadm5_log_end(i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %34
  ret i32 0
}

declare dso_local i32* @get_kadmin_context(i32, i32) #1

declare dso_local i64 @kadm5_log_init(i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @kadm5_log_foreach(i32*, i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @kadm5_log_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
