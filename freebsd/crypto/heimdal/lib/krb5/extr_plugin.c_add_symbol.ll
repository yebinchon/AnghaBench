; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_add_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_plugin = type { %struct.krb5_plugin*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.krb5_plugin**, i8*)* @add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_symbol(i32 %0, %struct.krb5_plugin** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_plugin**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.krb5_plugin*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.krb5_plugin** %1, %struct.krb5_plugin*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.krb5_plugin* @calloc(i32 1, i32 16)
  store %struct.krb5_plugin* %9, %struct.krb5_plugin** %8, align 8
  %10 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %11 = icmp eq %struct.krb5_plugin* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = call i32 @krb5_set_error_message(i32 %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %20 = getelementptr inbounds %struct.krb5_plugin, %struct.krb5_plugin* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %6, align 8
  %22 = load %struct.krb5_plugin*, %struct.krb5_plugin** %21, align 8
  %23 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %24 = getelementptr inbounds %struct.krb5_plugin, %struct.krb5_plugin* %23, i32 0, i32 0
  store %struct.krb5_plugin* %22, %struct.krb5_plugin** %24, align 8
  %25 = load %struct.krb5_plugin*, %struct.krb5_plugin** %8, align 8
  %26 = load %struct.krb5_plugin**, %struct.krb5_plugin*** %6, align 8
  store %struct.krb5_plugin* %25, %struct.krb5_plugin** %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %17, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.krb5_plugin* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
