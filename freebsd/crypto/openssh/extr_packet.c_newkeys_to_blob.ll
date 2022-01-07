; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_newkeys_to_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_newkeys_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sshcipher_ctx*, %struct.sshcipher_ctx*, %struct.newkeys** }
%struct.sshcipher_ctx = type { i32 }
%struct.newkeys = type { %struct.sshcomp, %struct.sshmac, %struct.sshenc }
%struct.sshcomp = type { i32, i32 }
%struct.sshmac = type { i32, i32, i32, i32 }
%struct.sshenc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MODE_OUT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.ssh*, i32)* @newkeys_to_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newkeys_to_blob(%struct.sshbuf* %0, %struct.ssh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca %struct.sshcipher_ctx*, align 8
  %10 = alloca %struct.sshcomp*, align 8
  %11 = alloca %struct.sshenc*, align 8
  %12 = alloca %struct.sshmac*, align 8
  %13 = alloca %struct.newkeys*, align 8
  %14 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store %struct.ssh* %1, %struct.ssh** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ssh*, %struct.ssh** %6, align 8
  %16 = getelementptr inbounds %struct.ssh, %struct.ssh* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.newkeys**, %struct.newkeys*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.newkeys*, %struct.newkeys** %19, i64 %21
  %23 = load %struct.newkeys*, %struct.newkeys** %22, align 8
  store %struct.newkeys* %23, %struct.newkeys** %13, align 8
  %24 = icmp eq %struct.newkeys* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %164

27:                                               ; preds = %3
  %28 = load %struct.newkeys*, %struct.newkeys** %13, align 8
  %29 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %28, i32 0, i32 2
  store %struct.sshenc* %29, %struct.sshenc** %11, align 8
  %30 = load %struct.newkeys*, %struct.newkeys** %13, align 8
  %31 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %30, i32 0, i32 1
  store %struct.sshmac* %31, %struct.sshmac** %12, align 8
  %32 = load %struct.newkeys*, %struct.newkeys** %13, align 8
  %33 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %32, i32 0, i32 0
  store %struct.sshcomp* %33, %struct.sshcomp** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MODE_OUT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.ssh*, %struct.ssh** %6, align 8
  %39 = getelementptr inbounds %struct.ssh, %struct.ssh* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %41, align 8
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.ssh*, %struct.ssh** %6, align 8
  %45 = getelementptr inbounds %struct.ssh, %struct.ssh* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %47, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi %struct.sshcipher_ctx* [ %42, %37 ], [ %48, %43 ]
  store %struct.sshcipher_ctx* %50, %struct.sshcipher_ctx** %9, align 8
  %51 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %9, align 8
  %52 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %53 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %56 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cipher_get_keyiv(%struct.sshcipher_ctx* %51, i32 %54, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %4, align 4
  br label %164

62:                                               ; preds = %49
  %63 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %63, %struct.sshbuf** %8, align 8
  %64 = icmp eq %struct.sshbuf* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %66, i32* %4, align 4
  br label %164

67:                                               ; preds = %62
  %68 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %69 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %70 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %68, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %67
  %75 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %76 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %77 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sshbuf_put_u32(%struct.sshbuf* %75, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %74
  %82 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %83 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %84 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sshbuf_put_u32(%struct.sshbuf* %82, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %81
  %89 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %90 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %91 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %94 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sshbuf_put_string(%struct.sshbuf* %89, i32 %92, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %88
  %99 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %100 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %101 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %104 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sshbuf_put_string(%struct.sshbuf* %99, i32 %102, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98, %88, %81, %74, %67
  br label %160

109:                                              ; preds = %98
  %110 = load %struct.sshenc*, %struct.sshenc** %11, align 8
  %111 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @cipher_authlen(i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %109
  %116 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %117 = load %struct.sshmac*, %struct.sshmac** %12, align 8
  %118 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %116, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %115
  %123 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %124 = load %struct.sshmac*, %struct.sshmac** %12, align 8
  %125 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sshbuf_put_u32(%struct.sshbuf* %123, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %122
  %130 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %131 = load %struct.sshmac*, %struct.sshmac** %12, align 8
  %132 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sshmac*, %struct.sshmac** %12, align 8
  %135 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sshbuf_put_string(%struct.sshbuf* %130, i32 %133, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129, %122, %115
  br label %160

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %109
  %142 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %143 = load %struct.sshcomp*, %struct.sshcomp** %10, align 8
  %144 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @sshbuf_put_u32(%struct.sshbuf* %142, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %150 = load %struct.sshcomp*, %struct.sshcomp** %10, align 8
  %151 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %149, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148, %141
  br label %160

156:                                              ; preds = %148
  %157 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %158 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %159 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %157, %struct.sshbuf* %158)
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %155, %139, %108
  %161 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %162 = call i32 @sshbuf_free(%struct.sshbuf* %161)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %65, %60, %25
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @cipher_get_keyiv(%struct.sshcipher_ctx*, i32, i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32, i32) #1

declare dso_local i64 @cipher_authlen(i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
