; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_fbsd_sysctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_fbsd_sysctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipf_clist = common dso_local global i32 0, align 4
@_net_inet_ipf = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fr_defnatage\00", align 1
@CTLFLAG_RWO = common dso_local global i32 0, align 4
@ipf_nat_softc_t = common dso_local global i32 0, align 4
@ipf_nat_defage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fr_statesize\00", align 1
@ipf_state_softc_t = common dso_local global i32 0, align 4
@ipf_state_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"fr_statemax\00", align 1
@ipf_state_max = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ipf_nattable_max\00", align 1
@ipf_nat_table_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"ipf_nattable_sz\00", align 1
@ipf_nat_table_sz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"ipf_natrules_sz\00", align 1
@ipf_nat_maprules_sz = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"ipf_rdrrules_sz\00", align 1
@ipf_nat_rdrrules_sz = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"ipf_hostmap_sz\00", align 1
@ipf_nat_hostmap_sz = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"fr_authsize\00", align 1
@ipf_auth_softc_t = common dso_local global i32 0, align 4
@ipf_auth_size = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"fr_authused\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ipf_auth_used = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"fr_defaultauthage\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ipf_auth_defaultage = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"fr_ipfrttl\00", align 1
@ipf_frag_softc_t = common dso_local global i32 0, align 4
@ipfr_ttl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipf_fbsd_sysctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipf_fbsd_sysctl_create() #0 {
  %1 = call i32 @sysctl_ctx_init(i32* @ipf_clist)
  %2 = load i32, i32* @_net_inet_ipf, align 4
  %3 = load i32, i32* @OID_AUTO, align 4
  %4 = load i32, i32* @CTLFLAG_RWO, align 4
  %5 = load i32, i32* @ipf_nat_softc_t, align 4
  %6 = load i32, i32* @ipf_nat_defage, align 4
  %7 = call i64 @offsetof(i32 %5, i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %2, i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4, i8* %8, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @_net_inet_ipf, align 4
  %11 = load i32, i32* @OID_AUTO, align 4
  %12 = load i32, i32* @CTLFLAG_RWO, align 4
  %13 = load i32, i32* @ipf_state_softc_t, align 4
  %14 = load i32, i32* @ipf_state_size, align 4
  %15 = call i64 @offsetof(i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @SYSCTL_DYN_IPF_STATE(i32 %10, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* %16, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @_net_inet_ipf, align 4
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RWO, align 4
  %21 = load i32, i32* @ipf_state_softc_t, align 4
  %22 = load i32, i32* @ipf_state_max, align 4
  %23 = call i64 @offsetof(i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @SYSCTL_DYN_IPF_STATE(i32 %18, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %20, i8* %24, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @_net_inet_ipf, align 4
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RWO, align 4
  %29 = load i32, i32* @ipf_nat_softc_t, align 4
  %30 = load i32, i32* @ipf_nat_table_max, align 4
  %31 = call i64 @offsetof(i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %28, i8* %32, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @_net_inet_ipf, align 4
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RWO, align 4
  %37 = load i32, i32* @ipf_nat_softc_t, align 4
  %38 = load i32, i32* @ipf_nat_table_sz, align 4
  %39 = call i64 @offsetof(i32 %37, i32 %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %36, i8* %40, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @_net_inet_ipf, align 4
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLFLAG_RWO, align 4
  %45 = load i32, i32* @ipf_nat_softc_t, align 4
  %46 = load i32, i32* @ipf_nat_maprules_sz, align 4
  %47 = call i64 @offsetof(i32 %45, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %42, i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %44, i8* %48, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @_net_inet_ipf, align 4
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RWO, align 4
  %53 = load i32, i32* @ipf_nat_softc_t, align 4
  %54 = load i32, i32* @ipf_nat_rdrrules_sz, align 4
  %55 = call i64 @offsetof(i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %50, i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %52, i8* %56, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @_net_inet_ipf, align 4
  %59 = load i32, i32* @OID_AUTO, align 4
  %60 = load i32, i32* @CTLFLAG_RWO, align 4
  %61 = load i32, i32* @ipf_nat_softc_t, align 4
  %62 = load i32, i32* @ipf_nat_hostmap_sz, align 4
  %63 = call i64 @offsetof(i32 %61, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @SYSCTL_DYN_IPF_NAT(i32 %58, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %60, i8* %64, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @_net_inet_ipf, align 4
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RWO, align 4
  %69 = load i32, i32* @ipf_auth_softc_t, align 4
  %70 = load i32, i32* @ipf_auth_size, align 4
  %71 = call i64 @offsetof(i32 %69, i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @SYSCTL_DYN_IPF_AUTH(i32 %66, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %68, i8* %72, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @_net_inet_ipf, align 4
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load i32, i32* @ipf_auth_softc_t, align 4
  %78 = load i32, i32* @ipf_auth_used, align 4
  %79 = call i64 @offsetof(i32 %77, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @SYSCTL_DYN_IPF_AUTH(i32 %74, i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %76, i8* %80, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @_net_inet_ipf, align 4
  %83 = load i32, i32* @OID_AUTO, align 4
  %84 = load i32, i32* @CTLFLAG_RW, align 4
  %85 = load i32, i32* @ipf_auth_softc_t, align 4
  %86 = load i32, i32* @ipf_auth_defaultage, align 4
  %87 = call i64 @offsetof(i32 %85, i32 %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @SYSCTL_DYN_IPF_AUTH(i32 %82, i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %84, i8* %88, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @_net_inet_ipf, align 4
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RW, align 4
  %93 = load i32, i32* @ipf_frag_softc_t, align 4
  %94 = load i32, i32* @ipfr_ttl, align 4
  %95 = call i64 @offsetof(i32 %93, i32 %94)
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @SYSCTL_DYN_IPF_FRAG(i32 %90, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %92, i8* %96, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_DYN_IPF_NAT(i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @SYSCTL_DYN_IPF_STATE(i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @SYSCTL_DYN_IPF_AUTH(i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @SYSCTL_DYN_IPF_FRAG(i32, i32, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
