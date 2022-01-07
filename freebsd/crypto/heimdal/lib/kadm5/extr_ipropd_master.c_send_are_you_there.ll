; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_are_you_there.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_are_you_there.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@SLAVE_F_DEAD = common dso_local global i32 0, align 4
@SLAVE_F_AYT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"slave %s missing, sending AYT\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"are_you_there: krb5_data_alloc\00", align 1
@ARE_YOU_THERE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"are_you_there: krb5_write_priv_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @send_are_you_there to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_are_you_there(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SLAVE_F_DEAD, align 4
  %14 = load i32, i32* @SLAVE_F_AYT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @SLAVE_F_AYT, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 4, i32* %32, align 8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %34 = call i32* @krb5_storage_from_mem(i8* %33, i32 4)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @slave_dead(i32 %40, %struct.TYPE_6__* %41)
  store i32 1, i32* %3, align 4
  br label %66

43:                                               ; preds = %19
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @ARE_YOU_THERE, align 4
  %46 = call i32 @krb5_store_int32(i32* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @krb5_storage_free(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @krb5_write_priv_message(i32 %49, i32 %52, i32* %54, %struct.TYPE_7__* %7)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @krb5_warn(i32 %59, i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = call i32 @slave_dead(i32 %62, %struct.TYPE_6__* %63)
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %58, %37, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @slave_dead(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
