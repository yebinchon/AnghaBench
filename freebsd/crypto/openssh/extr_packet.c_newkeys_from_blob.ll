; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_newkeys_from_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_newkeys_from_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.newkeys** }
%struct.newkeys = type { %struct.sshcomp, %struct.sshmac, %struct.sshenc }
%struct.sshcomp = type { i32, i32 }
%struct.sshmac = type { i64, i32, i32, i32 }
%struct.sshenc = type { i64, i64, i32*, i32, i32, i32, i32, i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.ssh*, i32)* @newkeys_from_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newkeys_from_blob(%struct.sshbuf* %0, %struct.ssh* %1, i32 %2) #0 {
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca %struct.sshcomp*, align 8
  %9 = alloca %struct.sshenc*, align 8
  %10 = alloca %struct.sshmac*, align 8
  %11 = alloca %struct.newkeys*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.ssh* %1, %struct.ssh** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %7, align 8
  store %struct.newkeys* null, %struct.newkeys** %11, align 8
  %16 = call %struct.newkeys* @calloc(i32 1, i32 80)
  store %struct.newkeys* %16, %struct.newkeys** %11, align 8
  %17 = icmp eq %struct.newkeys* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %19, i32* %15, align 4
  br label %153

20:                                               ; preds = %3
  %21 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %22 = call i32 @sshbuf_froms(%struct.sshbuf* %21, %struct.sshbuf** %7)
  store i32 %22, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %153

25:                                               ; preds = %20
  %26 = load %struct.newkeys*, %struct.newkeys** %11, align 8
  %27 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %26, i32 0, i32 2
  store %struct.sshenc* %27, %struct.sshenc** %9, align 8
  %28 = load %struct.newkeys*, %struct.newkeys** %11, align 8
  %29 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %28, i32 0, i32 1
  store %struct.sshmac* %29, %struct.sshmac** %10, align 8
  %30 = load %struct.newkeys*, %struct.newkeys** %11, align 8
  %31 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %30, i32 0, i32 0
  store %struct.sshcomp* %31, %struct.sshcomp** %8, align 8
  %32 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %33 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %34 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %33, i32 0, i32 3
  %35 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %32, i32* %34, i32* null)
  store i32 %35, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %25
  %38 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %39 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %40 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %39, i32 0, i32 7
  %41 = call i32 @sshbuf_get_u32(%struct.sshbuf* %38, i32* %40)
  store i32 %41, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %37
  %44 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %45 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %46 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %45, i32 0, i32 6
  %47 = call i32 @sshbuf_get_u32(%struct.sshbuf* %44, i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %51 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %52 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %51, i32 0, i32 5
  %53 = call i32 @sshbuf_get_string(%struct.sshbuf* %50, i32* %52, i64* %12)
  store i32 %53, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %57 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %58 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %57, i32 0, i32 4
  %59 = call i32 @sshbuf_get_string(%struct.sshbuf* %56, i32* %58, i64* %13)
  store i32 %59, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49, %43, %37, %25
  br label %153

62:                                               ; preds = %55
  %63 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %64 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @cipher_by_name(i32 %65)
  %67 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %68 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = icmp eq i32* %66, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %71, i32* %15, align 4
  br label %153

72:                                               ; preds = %62
  %73 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %74 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @cipher_authlen(i32* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %72
  %79 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %80 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %81 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %80, i32 0, i32 3
  %82 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %79, i32* %81, i32* null)
  store i32 %82, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %153

85:                                               ; preds = %78
  %86 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %87 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %88 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mac_setup(%struct.sshmac* %86, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %153

93:                                               ; preds = %85
  %94 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %95 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %96 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %95, i32 0, i32 2
  %97 = call i32 @sshbuf_get_u32(%struct.sshbuf* %94, i32* %96)
  store i32 %97, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %101 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %102 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %101, i32 0, i32 1
  %103 = call i32 @sshbuf_get_string(%struct.sshbuf* %100, i32* %102, i64* %14)
  store i32 %103, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %93
  br label %153

106:                                              ; preds = %99
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %109 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %113, i32* %15, align 4
  br label %153

114:                                              ; preds = %106
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.sshmac*, %struct.sshmac** %10, align 8
  %117 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %72
  %119 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %120 = load %struct.sshcomp*, %struct.sshcomp** %8, align 8
  %121 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %120, i32 0, i32 1
  %122 = call i32 @sshbuf_get_u32(%struct.sshbuf* %119, i32* %121)
  store i32 %122, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %126 = load %struct.sshcomp*, %struct.sshcomp** %8, align 8
  %127 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %126, i32 0, i32 0
  %128 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %125, i32* %127, i32* null)
  store i32 %128, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %118
  br label %153

131:                                              ; preds = %124
  %132 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %133 = call i64 @sshbuf_len(%struct.sshbuf* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %136, i32* %15, align 4
  br label %153

137:                                              ; preds = %131
  %138 = load i64, i64* %12, align 8
  %139 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %140 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load %struct.sshenc*, %struct.sshenc** %9, align 8
  %143 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load %struct.newkeys*, %struct.newkeys** %11, align 8
  %145 = load %struct.ssh*, %struct.ssh** %5, align 8
  %146 = getelementptr inbounds %struct.ssh, %struct.ssh* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load %struct.newkeys**, %struct.newkeys*** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.newkeys*, %struct.newkeys** %149, i64 %151
  store %struct.newkeys* %144, %struct.newkeys** %152, align 8
  store %struct.newkeys* null, %struct.newkeys** %11, align 8
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %137, %135, %130, %112, %105, %92, %84, %70, %61, %24, %18
  %154 = load %struct.newkeys*, %struct.newkeys** %11, align 8
  %155 = call i32 @free(%struct.newkeys* %154)
  %156 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %157 = call i32 @sshbuf_free(%struct.sshbuf* %156)
  %158 = load i32, i32* %15, align 4
  ret i32 %158
}

declare dso_local %struct.newkeys* @calloc(i32, i32) #1

declare dso_local i32 @sshbuf_froms(%struct.sshbuf*, %struct.sshbuf**) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i32*, i64*) #1

declare dso_local i32* @cipher_by_name(i32) #1

declare dso_local i64 @cipher_authlen(i32*) #1

declare dso_local i32 @mac_setup(%struct.sshmac*, i32) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @free(%struct.newkeys*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
