; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_fail_choice.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_fail_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"\A1\02\02\01\01\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"choice one too short\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\A1\03\02\02\01\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"choice one too short inner\00", align 1
@decode_TESTChoice1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_fail_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fail_choice() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 64, i1 false)
  %4 = bitcast i8* %3 to [2 x %struct.test_case]*
  %5 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.test_case, %struct.test_case* %5, i32 0, i32 1
  store i8* inttoptr (i64 6 to i8*), i8** %6, align 8
  %7 = getelementptr inbounds %struct.test_case, %struct.test_case* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds %struct.test_case, %struct.test_case* %5, i32 0, i32 3
  store i32* bitcast ([21 x i8]* @.str.1 to i32*), i32** %8, align 8
  %9 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 1
  store i8* inttoptr (i64 6 to i8*), i8** %10, align 8
  %11 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 3
  store i32* bitcast ([27 x i8]* @.str.3 to i32*), i32** %12, align 8
  store i32 2, i32* %2, align 4
  %13 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %14 = load i32, i32* %2, align 4
  %15 = load i64, i64* @decode_TESTChoice1, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @generic_decode_fail(%struct.test_case* %13, i32 %14, i32 4, i32 %16)
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @generic_decode_fail(%struct.test_case*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
