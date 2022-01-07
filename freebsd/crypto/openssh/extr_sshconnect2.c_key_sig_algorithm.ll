; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_key_sig_algorithm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect2.c_key_sig_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.ssh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.sshkey = type { i64 }

@KEY_RSA = common dso_local global i64 0, align 8
@KEY_RSA_CERT = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ssh*, %struct.sshkey*)* @key_sig_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_sig_algorithm(%struct.ssh* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.ssh*, %struct.ssh** %4, align 8
  %12 = icmp eq %struct.ssh* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.ssh*, %struct.ssh** %4, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %22 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KEY_RSA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %28 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KEY_RSA_CERT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %13, %2
  %33 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %34 = call i32 @sshkey_ssh_name(%struct.sshkey* %33)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %36 = call i8* @match_list(i32 %34, i8* %35, i32* null)
  store i8* %36, i8** %3, align 8
  br label %76

37:                                               ; preds = %26, %20
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** %6, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %71, %50, %37
  %41 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @sshkey_type_from_name(i8* %44)
  %46 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %47 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %40

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @sshkey_sigalg_by_name(i8* %52)
  %54 = load %struct.ssh*, %struct.ssh** %4, align 8
  %55 = getelementptr inbounds %struct.ssh, %struct.ssh* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @match_list(i32 %53, i8* %58, i32* null)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i8*, i8** %8, align 8
  %64 = call i8* @xstrdup(i8* %63)
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %62, %51
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %72

71:                                               ; preds = %65
  br label %40

72:                                               ; preds = %70, %40
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %10, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %72, %32
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i8* @match_list(i32, i8*, i32*) #1

declare dso_local i32 @sshkey_ssh_name(%struct.sshkey*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @sshkey_type_from_name(i8*) #1

declare dso_local i32 @sshkey_sigalg_by_name(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
