; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_set_name_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_set_name_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@set_name_ex.ex_tbl = internal constant [29 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 153, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 152, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 151, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i64 150, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i64 149, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 146, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 148, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 147, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 156, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 154, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i64 155, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i64 145, i32 -1 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i64 133, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i64 132, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i64 129, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 130, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i64 144, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 139, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i64 137, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i64 141, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i64 142, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 138, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 128, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i64 143, i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 134, i32 -1 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 135, i32 -1 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 136, i32 -1 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i64 136, i32 -1 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"esc_2253\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"esc_2254\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"esc_ctrl\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"esc_msb\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"use_quote\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ignore_type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"show_type\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"dump_all\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"dump_nostr\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dump_der\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"sep_comma_plus\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"sep_comma_plus_space\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"sep_semi_plus_space\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"sep_multiline\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"dn_rev\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"nofname\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"sname\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"lname\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"space_eq\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"dump_unknown\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"RFC2253\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"oneline\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ca_default\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_name_ex(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @set_multi_opts(i64* %6, i8* %7, %struct.TYPE_3__* getelementptr inbounds ([29 x %struct.TYPE_3__], [29 x %struct.TYPE_3__]* @set_name_ex.ex_tbl, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 145
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 131
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %22, 132
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %20, %15, %11
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @set_multi_opts(i64*, i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
