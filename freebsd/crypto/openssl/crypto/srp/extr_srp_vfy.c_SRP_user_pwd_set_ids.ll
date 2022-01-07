; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_user_pwd_set_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_user_pwd_set_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @SRP_user_pwd_set_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SRP_user_pwd_set_ids(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @OPENSSL_strdup(i8* %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = icmp eq i32* null, %13
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %31

18:                                               ; preds = %10, %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @OPENSSL_strdup(i8* %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = icmp ne i32* null, %24
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ true, %18 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
