; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mech_switch.c_add_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mech_switch.c_add_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*, i32*, i32**)* }
%struct._gss_mech_switch = type { i32*, %struct.TYPE_3__, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@_gss_mech_oids = common dso_local global i32 0, align 4
@_gss_mechs = common dso_local global i32 0, align 4
@gm_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @add_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_builtin(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct._gss_mech_switch*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = call %struct._gss_mech_switch* @calloc(i32 1, i32 40)
  store %struct._gss_mech_switch* %10, %struct._gss_mech_switch** %4, align 8
  %11 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %12 = icmp eq %struct._gss_mech_switch* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %9
  %16 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %17 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %19 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = bitcast %struct.TYPE_3__* %19 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %27 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %29 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @gss_add_oid_set_member(i32* %5, i32* %30, i32* @_gss_mech_oids)
  %32 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %33 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (i32*, i32*, i32**)*, i32 (i32*, i32*, i32**)** %34, align 8
  %36 = icmp ne i32 (i32*, i32*, i32**)* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %15
  %38 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %39 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (i32*, i32*, i32**)*, i32 (i32*, i32*, i32**)** %40, align 8
  %42 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %43 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %46 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %45, i32 0, i32 0
  %47 = call i32 %41(i32* %5, i32* %44, i32** %46)
  br label %48

48:                                               ; preds = %37, %15
  %49 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %50 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %55 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %54, i32 0, i32 0
  %56 = call i32 @gss_create_empty_oid_set(i32* %5, i32** %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %4, align 8
  %59 = load i32, i32* @gm_link, align 4
  %60 = call i32 @HEIM_SLIST_INSERT_HEAD(i32* @_gss_mechs, %struct._gss_mech_switch* %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %13, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct._gss_mech_switch* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gss_add_oid_set_member(i32*, i32*, i32*) #1

declare dso_local i32 @gss_create_empty_oid_set(i32*, i32**) #1

declare dso_local i32 @HEIM_SLIST_INSERT_HEAD(i32*, %struct._gss_mech_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
