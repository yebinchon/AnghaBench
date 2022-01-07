; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_connect_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_connect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i8*, i32, i32, i8*, i32, i32, i32*, i32, i32*, i8* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [21 x i8] c"port missing from %s\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"error resolving %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"connect to host: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"krb5_storage_from_fd\00", align 1
@HAS_MONIKER = common dso_local global i32 0, align 4
@ISSERVER = common dso_local global i32 0, align 4
@logfile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"starting log socket to client %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to create log krb5_storage\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"failed to fork\00", align 1
@clients = common dso_local global %struct.client** null, align 8
@num_clients = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @connect_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_client(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = call i8* @ecalloc(i32 1, i32 64)
  %15 = bitcast i8* %14 to %struct.client*
  store %struct.client* %15, %struct.client** %5, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @estrdup(i8* %16)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 0, i8* %26, align 1
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @estrdup(i8* %28)
  %30 = load %struct.client*, %struct.client** %5, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 32)
  %33 = load i32, i32* @PF_UNSPEC, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @getaddrinfo(i8* %37, i8* %38, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %25
  %46 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %46, %struct.addrinfo** %8, align 8
  store i32 -1, i32* %10, align 4
  br label %47

47:                                               ; preds = %99, %45
  %48 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %49 = icmp ne %struct.addrinfo* %48, null
  br i1 %49, label %50, label %103

50:                                               ; preds = %47
  %51 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @socket(i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %99

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @connect(i32 %65, i32 %68, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %10, align 4
  br label %99

77:                                               ; preds = %64
  %78 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @ecalloc(i32 1, i32 %80)
  %82 = load %struct.client*, %struct.client** %5, align 8
  %83 = getelementptr inbounds %struct.client, %struct.client* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load %struct.client*, %struct.client** %5, align 8
  %85 = getelementptr inbounds %struct.client, %struct.client* %84, i32 0, i32 9
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcpy(i8* %86, i32 %89, i32 %92)
  %94 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.client*, %struct.client** %5, align 8
  %98 = getelementptr inbounds %struct.client, %struct.client* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %74, %63
  %100 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 5
  %102 = load %struct.addrinfo*, %struct.addrinfo** %101, align 8
  store %struct.addrinfo* %102, %struct.addrinfo** %8, align 8
  br label %47

103:                                              ; preds = %77, %47
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i8*, i8** %3, align 8
  %108 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @krb5_storage_from_fd(i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.client*, %struct.client** %5, align 8
  %116 = getelementptr inbounds %struct.client, %struct.client* %115, i32 0, i32 8
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @close(i32 %117)
  %119 = load %struct.client*, %struct.client** %5, align 8
  %120 = getelementptr inbounds %struct.client, %struct.client* %119, i32 0, i32 8
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %109
  store i8* null, i8** %12, align 8
  %126 = load %struct.client*, %struct.client** %5, align 8
  %127 = load %struct.client*, %struct.client** %5, align 8
  %128 = getelementptr inbounds %struct.client, %struct.client* %127, i32 0, i32 2
  %129 = call i32 @get_version_capa(%struct.client* %126, i32* %11, i32* %128, i8** %12)
  %130 = load i8*, i8** %12, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.client*, %struct.client** %5, align 8
  %137 = getelementptr inbounds %struct.client, %struct.client* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @HAS_MONIKER, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.client*, %struct.client** %5, align 8
  %144 = load %struct.client*, %struct.client** %5, align 8
  %145 = getelementptr inbounds %struct.client, %struct.client* %144, i32 0, i32 3
  %146 = call i32 @get_moniker(%struct.client* %143, i8** %145)
  br label %153

147:                                              ; preds = %135
  %148 = load %struct.client*, %struct.client** %5, align 8
  %149 = getelementptr inbounds %struct.client, %struct.client* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.client*, %struct.client** %5, align 8
  %152 = getelementptr inbounds %struct.client, %struct.client* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %147, %142
  %154 = load %struct.client*, %struct.client** %5, align 8
  %155 = getelementptr inbounds %struct.client, %struct.client* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ISSERVER, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.client*, %struct.client** %5, align 8
  %162 = load %struct.client*, %struct.client** %5, align 8
  %163 = getelementptr inbounds %struct.client, %struct.client* %162, i32 0, i32 7
  %164 = call i32 @get_targetname(%struct.client* %161, i32* %163)
  br label %165

165:                                              ; preds = %160, %153
  %166 = load i64, i64* @logfile, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %165
  %169 = load %struct.client*, %struct.client** %5, align 8
  %170 = getelementptr inbounds %struct.client, %struct.client* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %171)
  %173 = load %struct.client*, %struct.client** %5, align 8
  %174 = call i32 @wait_log(%struct.client* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i8* @krb5_storage_from_fd(i32 %175)
  %177 = bitcast i8* %176 to i32*
  %178 = load %struct.client*, %struct.client** %5, align 8
  %179 = getelementptr inbounds %struct.client, %struct.client* %178, i32 0, i32 6
  store i32* %177, i32** %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @close(i32 %180)
  %182 = load %struct.client*, %struct.client** %5, align 8
  %183 = getelementptr inbounds %struct.client, %struct.client* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %168
  %187 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %168
  %189 = call i32 (...) @fork()
  %190 = load %struct.client*, %struct.client** %5, align 8
  %191 = getelementptr inbounds %struct.client, %struct.client* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load %struct.client*, %struct.client** %5, align 8
  %193 = getelementptr inbounds %struct.client, %struct.client* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %210

198:                                              ; preds = %188
  %199 = load %struct.client*, %struct.client** %5, align 8
  %200 = getelementptr inbounds %struct.client, %struct.client* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.client*, %struct.client** %5, align 8
  %205 = call i32 @log_function(%struct.client* %204)
  %206 = load i64, i64* @logfile, align 8
  %207 = call i32 @fclose(i64 %206)
  %208 = call i32 @exit(i32 0) #3
  unreachable

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209, %196
  br label %211

211:                                              ; preds = %210, %165
  %212 = load %struct.client**, %struct.client*** @clients, align 8
  %213 = load i32, i32* @num_clients, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 8
  %217 = trunc i64 %216 to i32
  %218 = call %struct.client** @erealloc(%struct.client** %212, i32 %217)
  store %struct.client** %218, %struct.client*** @clients, align 8
  %219 = load %struct.client*, %struct.client** %5, align 8
  %220 = load %struct.client**, %struct.client*** @clients, align 8
  %221 = load i32, i32* @num_clients, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.client*, %struct.client** %220, i64 %222
  store %struct.client* %219, %struct.client** %223, align 8
  %224 = load i32, i32* @num_clients, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @num_clients, align 4
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 @free(i8* %226)
  ret void
}

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @get_version_capa(%struct.client*, i32*, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @get_moniker(%struct.client*, i8**) #1

declare dso_local i32 @get_targetname(%struct.client*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @wait_log(%struct.client*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @log_function(%struct.client*) #1

declare dso_local i32 @fclose(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.client** @erealloc(%struct.client**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
