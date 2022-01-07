; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [534 x i8] c"usage: ssh-keygen [-q] [-b bits] [-t dsa | ecdsa | ed25519 | rsa]\0A                  [-N new_passphrase] [-C comment] [-f output_keyfile]\0A       ssh-keygen -p [-P old_passphrase] [-N new_passphrase] [-f keyfile]\0A       ssh-keygen -i [-m key_format] [-f input_keyfile]\0A       ssh-keygen -e [-m key_format] [-f input_keyfile]\0A       ssh-keygen -y [-f input_keyfile]\0A       ssh-keygen -c [-P passphrase] [-C comment] [-f keyfile]\0A       ssh-keygen -l [-v] [-E fingerprint_hash] [-f input_keyfile]\0A       ssh-keygen -B [-f input_keyfile]\0A\00", align 1
@.str.1 = private unnamed_addr constant [608 x i8] c"       ssh-keygen -F hostname [-f known_hosts_file] [-l]\0A       ssh-keygen -H [-f known_hosts_file]\0A       ssh-keygen -R hostname [-f known_hosts_file]\0A       ssh-keygen -r hostname [-f input_keyfile] [-g]\0A       ssh-keygen -s ca_key -I certificate_identity [-h] [-U]\0A                  [-D pkcs11_provider] [-n principals] [-O option]\0A                  [-V validity_interval] [-z serial_number] file ...\0A       ssh-keygen -L [-f input_keyfile]\0A       ssh-keygen -A\0A       ssh-keygen -k -f krl_file [-u] [-s ca_public] [-z version_number]\0A                  file ...\0A       ssh-keygen -Q -f krl_file file ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([534 x i8], [534 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([608 x i8], [608 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
