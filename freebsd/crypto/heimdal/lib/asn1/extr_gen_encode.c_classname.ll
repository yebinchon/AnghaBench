; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_encode.c_classname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_encode.c_classname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ASN1_C_UNIV\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ASN1_C_APPL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ASN1_C_CONTEXT\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ASN1_C_PRIV\00", align 1
@__const.classname.cn = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)], align 16
@ASN1_C_UNIV = common dso_local global i64 0, align 8
@ASN1_C_PRIVATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @classname(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8*], align 16
  store i64 %0, i64* %3, align 8
  %5 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i8*]* @__const.classname.cn to i8*), i64 32, i1 false)
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @ASN1_C_UNIV, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ASN1_C_PRIVATE, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %18

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
