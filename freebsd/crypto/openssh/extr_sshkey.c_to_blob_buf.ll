; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_to_blob_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_to_blob_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i8*, i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_EXPECTED_CERT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_LACKS_CERTBLOB = common dso_local global i32 0, align 4
@ED25519_PK_SZ = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*, %struct.sshbuf*, i32, i32)* @to_blob_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_blob_buf(%struct.sshkey* %0, %struct.sshbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %6, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %15 = icmp eq %struct.sshkey* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %5, align 4
  br label %98

18:                                               ; preds = %4
  %19 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %20 = call i64 @sshkey_is_cert(%struct.sshkey* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %24 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %23, i32 0, i32 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @SSH_ERR_EXPECTED_CERT, align 4
  store i32 %28, i32* %5, align 4
  br label %98

29:                                               ; preds = %22
  %30 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %31 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %30, i32 0, i32 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @sshbuf_len(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @SSH_ERR_KEY_LACKS_CERTBLOB, align 4
  store i32 %38, i32* %5, align 4
  br label %98

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %45 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sshkey_type_plain(i32 %46)
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %50 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i32 [ %47, %43 ], [ %51, %48 ]
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @sshkey_ssh_name_from_type_nid(i32 %54, i32 %57)
  store i8* %58, i8** %12, align 8
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %95 [
    i32 132, label %60
    i32 133, label %72
  ]

60:                                               ; preds = %52
  %61 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %62 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %63 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %62, i32 0, i32 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sshbuf_putb(%struct.sshbuf* %61, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %98

71:                                               ; preds = %60
  br label %97

72:                                               ; preds = %52
  %73 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %74 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %78, i32* %5, align 4
  br label %98

79:                                               ; preds = %72
  %80 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %80, i8* %81)
  store i32 %82, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %86 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %87 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ED25519_PK_SZ, align 4
  %90 = call i32 @sshbuf_put_string(%struct.sshbuf* %85, i32* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %98

94:                                               ; preds = %84
  br label %97

95:                                               ; preds = %52
  %96 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %94, %71
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %95, %92, %77, %69, %37, %27, %16
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32 @sshkey_type_plain(i32) #1

declare dso_local i8* @sshkey_ssh_name_from_type_nid(i32, i32) #1

declare dso_local i32 @sshbuf_putb(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
